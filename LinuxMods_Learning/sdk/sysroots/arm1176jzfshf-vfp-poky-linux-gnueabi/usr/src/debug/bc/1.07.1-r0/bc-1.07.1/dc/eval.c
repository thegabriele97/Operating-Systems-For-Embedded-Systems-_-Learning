/*
 * evaluate the dc language, from a FILE* or a string
 *
 * Copyright (C) 1994, 1997, 1998, 2000, 2003, 2005, 2006, 2008, 2010, 2012-2017
 * Free Software Foundation, Inc.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 *
 */

/* This is the only module which knows about the dc input language */

#include "config.h"

#include <stdio.h>
#ifdef HAVE_STRING_H
# include <string.h>	/* memchr */
#else
# ifdef HAVE_MEMORY_H
#  include <memory.h>	/* memchr, maybe */
# else
#  ifdef HAVE_STRINGS_H
#   include <strings.h>	/* memchr, maybe */
#  endif
#endif
#endif
#include <signal.h>
#ifdef HAVE_UNISTD_H
# include <unistd.h>
#endif
#include "dc.h"
#include "dc-proto.h"

typedef enum {DC_FALSE, DC_TRUE} dc_boolean;

typedef enum {
	DC_OKAY = DC_SUCCESS, /* no further intervention needed for this command */
	DC_EATONE,		/* caller needs to eat the lookahead char */
	DC_EVALREG,		/* caller needs to eval the string named by `peekc' */
	DC_EVALTOS,		/* caller needs to eval the string on top of the stack */
	DC_QUIT,		/* quit out of unwind_depth levels of evaluation */
	DC_INT,			/* caller needs to parse a dc_num from input stream */
	DC_STR,			/* caller needs to parse a dc_str from input stream */
	DC_SYSTEM,		/* caller needs to run a system() on next input line */
	DC_COMMENT,		/* caller needs to skip to the next input line */
	DC_NEGCMP,		/* caller needs to re-call dc_func() with `negcmp' set */

	DC_EOF_ERROR	/* unexpected end of input; abort current eval */
} dc_status;

static int dc_ibase=10;		/* input base, 2 <= dc_ibase <= DC_IBASE_MAX */
static int dc_obase=10;		/* output base, 2 <= dc_obase */
static int dc_scale=0;		/* scale (see user documentaton) */

/* for Quitting evaluations */
static int unwind_depth=0;

/* for handling SIGINT properly */
static volatile sig_atomic_t interrupt_seen=0;

/* if true, active Quit will not exit program */
static dc_boolean unwind_noexit=DC_FALSE;

/*
 * Used to synchronize lookahead on stdin for '?' command.
 * If set to EOF then lookahead is used up.
 */
static int stdin_lookahead=EOF;

/* forward reference */
static int evalstr(dc_data *string);


/* input_fil and input_str are passed as arguments to dc_getnum */

/* used by the input_* functions: */
static FILE *input_fil_fp;
static const char *input_str_string;

/* Since we have a need for two characters of pushback, and
 * ungetc() only guarantees one, we place the second pushback here
 */
static int input_pushback;

/* passed as an argument to dc_getnum */
static int
input_fil DC_DECLVOID()
{
	if (input_pushback != EOF){
		int c = input_pushback;
		input_pushback = EOF;
		return c;
	}
	return getc(input_fil_fp);
}

/* passed as an argument to dc_getnum */
static int
input_str DC_DECLVOID()
{
	if (*input_str_string == '\0')
		return EOF;
	return *(const unsigned char *)input_str_string++;
}



/* takes a string and evals it; frees the string when done */
/* Wrapper around evalstr to avoid duplicating the free call
 * at all possible return points.
 */
static int
dc_eval_and_free_str DC_DECLARG((string))
	dc_data *string DC_DECLEND
{
	dc_status status;

	status = evalstr(string);
	if (string->dc_type == DC_STRING)
		dc_free_str(&string->v.string);
	return status;
}


/* notice when an interrupt event happens */
static void
dc_trap_interrupt DC_DECLARG((signo))
	int signo DC_DECLEND
{
	signal(signo, dc_trap_interrupt);
	interrupt_seen = 1;
}


/* step pointer past next end-of-line (or to end-of-string) */
static const char *
skip_past_eol DC_DECLARG((strptr, strend))
	const char *strptr DC_DECLSEP
	const char *strend DC_DECLEND
{
	const char *p = memchr(strptr, '\n', (size_t)(strend-strptr));
	if (p != NULL)
		return p+1;
	return strend;
}


/* dc_func does the grunt work of figuring out what each input
 * character means; used by both dc_evalstr and dc_evalfile
 *
 * c -> the "current" input character under consideration
 * peekc -> the lookahead input character
 * negcmp -> negate comparison test (for <,=,> commands)
 */
static dc_status
dc_func DC_DECLARG((c, peekc, negcmp))
	int c DC_DECLSEP
	int peekc DC_DECLSEP
	int negcmp DC_DECLEND
{
	dc_data datum;
	int tmpint;

	switch (c){
	case '_': case '.':
	case '0': case '1': case '2': case '3':
	case '4': case '5': case '6': case '7':
	case '8': case '9': case 'A': case 'B':
	case 'C': case 'D': case 'E': case 'F':
		return DC_INT;
	case ' ':
	case '\t':
	case '\n':
		/* standard command separators */
		break;

	case '+':	/* add top two stack elements */
		dc_binop(dc_add, dc_scale);
		break;
	case '-':	/* subtract top two stack elements */
		dc_binop(dc_sub, dc_scale);
		break;
	case '*':	/* multiply top two stack elements */
		dc_binop(dc_mul, dc_scale);
		break;
	case '/':	/* divide top two stack elements */
		dc_binop(dc_div, dc_scale);
		break;
	case '%':
		/* take the remainder from division of the top two stack elements */
		dc_binop(dc_rem, dc_scale);
		break;
	case '~':
		/* Do division on the top two stack elements.  Return the
		 * quotient as next-to-top of stack and the remainder as
		 * top-of-stack.
		 */
		dc_binop2(dc_divrem, dc_scale);
		break;
	case '|':
		/* Consider the top three elements of the stack as (base, exp, mod),
		 * where mod is top-of-stack, exp is next-to-top, and base is
		 * second-from-top. Mod must be non-zero, exp must be non-negative,
		 * and all three must be integers. Push the result of raising
		 * base to the exp power, reduced modulo mod. If we had base in
		 * register b, exp in register e, and mod in register m then this
		 * is conceptually equivalent to "lble^lm%", but it is implemented
		 * in a more efficient manner, and can handle arbritrarily large
		 * values for exp.
		 */
		dc_triop(dc_modexp, dc_scale);
		break;
	case '^':	/* exponientiation of the top two stack elements */
		dc_binop(dc_exp, dc_scale);
		break;
	case '<':
		/* eval register named by peekc if
		 * less-than holds for top two stack elements
		 */
		if (peekc == EOF)
			return DC_EOF_ERROR;
		if ( (dc_cmpop() <  0) == (negcmp==0) )
			return DC_EVALREG;
		return DC_EATONE;
	case '=':
		/* eval register named by peekc if
		 * equal-to holds for top two stack elements
		 */
		if (peekc == EOF)
			return DC_EOF_ERROR;
		if ( (dc_cmpop() == 0) == (negcmp==0) )
			return DC_EVALREG;
		return DC_EATONE;
	case '>':
		/* eval register named by peekc if
		 * greater-than holds for top two stack elements
		 */
		if (peekc == EOF)
			return DC_EOF_ERROR;
		if ( (dc_cmpop() >  0) == (negcmp==0) )
			return DC_EVALREG;
		return DC_EATONE;
	case '?':	/* read a line from standard-input and eval it */
		if (stdin_lookahead != EOF){
			ungetc(stdin_lookahead, stdin);
			stdin_lookahead = EOF;
		}
		datum = dc_readstring(stdin, '\n', '\n');
		if (ferror(stdin))
			return DC_EOF_ERROR;
		dc_push(datum);
		return DC_EVALTOS;
	case '[':	/* read to balancing ']' into a dc_str */
		return DC_STR;
	case '!':	/* read to newline and call system() on resulting string */
		if (peekc == '<' || peekc == '=' || peekc == '>')
			return DC_NEGCMP;
		return DC_SYSTEM;
	case '#':	/* comment; skip remainder of current line */
		return DC_COMMENT;

	case 'a':	/* Convert top of stack to an ascii character. */
		if (dc_pop(&datum) == DC_SUCCESS){
			char tmps;
			if (datum.dc_type == DC_NUMBER){
				tmps = (char) dc_num2int(datum.v.number, DC_TOSS);
			}else if (datum.dc_type == DC_STRING){
				tmps = *dc_str2charp(datum.v.string);
				dc_free_str(&datum.v.string);
			}else{
				dc_garbage("at top of stack", -1);
			}
			dc_push(dc_makestring(&tmps, 1));
		}
		break;
	case 'c':	/* clear whole stack */
		dc_clear_stack();
		break;
	case 'd':	/* duplicate the datum on the top of stack */
		if (dc_top_of_stack(&datum) == DC_SUCCESS)
			dc_push(dc_dup(datum));
		break;
	case 'f':	/* print list of all stack items */
		dc_printall(dc_obase);
		break;
	case 'i':	/* set input base to value on top of stack */
		if (dc_pop(&datum) == DC_SUCCESS){
			tmpint = 0;
			if (datum.dc_type == DC_NUMBER)
				tmpint = dc_num2int(datum.v.number, DC_TOSS);
			if (2 <= tmpint  &&  tmpint <= DC_IBASE_MAX)
				dc_ibase = tmpint;
			else
				fprintf(stderr,
						"%s: input base must be a number \
between 2 and %d (inclusive)\n",
						progname, DC_IBASE_MAX);
		}
		break;
	case 'k':	/* set scale to value on top of stack */
		if (dc_pop(&datum) == DC_SUCCESS){
			tmpint = -1;
			if (datum.dc_type == DC_NUMBER)
				tmpint = dc_num2int(datum.v.number, DC_TOSS);
			if ( ! (tmpint >= 0) )
				fprintf(stderr,
						"%s: scale must be a nonnegative number\n",
						progname);
			else
				dc_scale = tmpint;
		}
		break;
	case 'l':	/* "load" -- push value on top of register stack named
				 * by peekc onto top of evaluation stack; does not
				 * modify the register stack
				 */
		if (peekc == EOF)
			return DC_EOF_ERROR;
		if (dc_register_get(peekc, &datum) == DC_SUCCESS)
			dc_push(datum);
		return DC_EATONE;
	case 'n':	/* print the value popped off of top-of-stack;
				 * do not add a trailing newline
				 */
		if (dc_pop(&datum) == DC_SUCCESS)
			dc_print(datum, dc_obase, DC_NONL, DC_TOSS);
		break;
	case 'o':	/* set output base to value on top of stack */
		if (dc_pop(&datum) == DC_SUCCESS){
			tmpint = 0;
			if (datum.dc_type == DC_NUMBER)
				tmpint = dc_num2int(datum.v.number, DC_TOSS);
			if ( ! (tmpint > 1) )
				fprintf(stderr,
						"%s: output base must be a number greater than 1\n",
						progname);
			else
				dc_obase = tmpint;
		}
		break;
	case 'p':	/* print the datum on the top of stack,
				 * with a trailing newline
				 */
		if (dc_top_of_stack(&datum) == DC_SUCCESS)
			dc_print(datum, dc_obase, DC_WITHNL, DC_KEEP);
		break;
	case 'q':	/* quit two levels of evaluation, posibly exiting program */
		unwind_depth = 1; /* the return below is the first level of returns */
		unwind_noexit = DC_FALSE;
		return DC_QUIT;
	case 'r':	/* rotate (swap) the top two elements on the stack */
		dc_stack_rotate(2);
		break;
	case 's':	/* "store" -- replace top of register stack named
				 * by peekc with the value popped from the top
				 * of the evaluation stack
				 */
		if (peekc == EOF)
			return DC_EOF_ERROR;
		if (dc_pop(&datum) == DC_SUCCESS)
			dc_register_set(peekc, datum);
		return DC_EATONE;
	case 'v':	/* replace top of stack with its square root */
		if (dc_pop(&datum) == DC_SUCCESS){
			dc_num tmpnum;
			if (datum.dc_type != DC_NUMBER){
				fprintf(stderr,
						"%s: square root of nonnumeric attempted\n",
						progname);
			}else if (dc_sqrt(datum.v.number, dc_scale, &tmpnum) == DC_SUCCESS){
				dc_free_num(&datum.v.number);
				datum.v.number = tmpnum;
				dc_push(datum);
			}
		}
		break;
	case 'x':	/* eval the datum popped from top of stack */
		return DC_EVALTOS;
	case 'z':	/* push the current stack depth onto the top of stack */
		dc_push(dc_int2data(dc_tell_stackdepth()));
		break;

	case 'I':	/* push the current input base onto the stack */
		dc_push(dc_int2data(dc_ibase));
		break;
	case 'K':	/* push the current scale onto the stack */
		dc_push(dc_int2data(dc_scale));
		break;
	case 'L':	/* pop a value off of register stack named by peekc
				 * and push it onto the evaluation stack
				 */
		if (peekc == EOF)
			return DC_EOF_ERROR;
		if (dc_register_pop(peekc, &datum) == DC_SUCCESS)
			dc_push(datum);
		return DC_EATONE;
	case 'O':	/* push the current output base onto the stack */
		dc_push(dc_int2data(dc_obase));
		break;
	case 'P':
		/* Pop the value off the top of a stack.  If it is
		 * a number, dump out the integer portion of its
		 * absolute value as a "base UCHAR_MAX+1" byte stream;
		 * if it is a string, just print it.
		 * In either case, do not append a trailing newline.
		 */
		if (dc_pop(&datum) == DC_SUCCESS){
			if (datum.dc_type == DC_NUMBER)
				dc_dump_num(datum.v.number, DC_TOSS);
			else if (datum.dc_type == DC_STRING)
				dc_out_str(datum.v.string, DC_TOSS);
			else
				dc_garbage("at top of stack", -1);
		}
		fflush(stdout);
		break;
	case 'Q':	/* quit out of top-of-stack nested evals;
				 * pops value from stack;
				 * does not exit program (stops short if necessary)
				 */
		if (dc_pop(&datum) == DC_SUCCESS){
			unwind_depth = 0;
			unwind_noexit = DC_TRUE;
			if (datum.dc_type == DC_NUMBER)
				unwind_depth = dc_num2int(datum.v.number, DC_TOSS);
			if (unwind_depth-- > 0)
				return DC_QUIT;
			unwind_depth = 0;	/* paranoia */
			fprintf(stderr,
					"%s: Q command requires a number >= 1\n",
					progname);
		}
		break;
	case 'R':	/* pop a value off of the evaluation stack,;
				 * rotate the top remaining stack elements that many
				 * places forward (negative numbers mean rotate
				 * backward).
				 */
		if (dc_pop(&datum) == DC_SUCCESS){
			tmpint = 0;
			if (datum.dc_type == DC_NUMBER)
				tmpint = dc_num2int(datum.v.number, DC_TOSS);
			dc_stack_rotate(tmpint);
		}
		break;
	case 'S':	/* pop a value off of the evaluation stack
				 * and push it onto the register stack named by peekc
				 */
		if (peekc == EOF)
			return DC_EOF_ERROR;
		if (dc_pop(&datum) == DC_SUCCESS)
			dc_register_push(peekc, datum);
		return DC_EATONE;
	case 'X':	/* replace the number on top-of-stack with its scale factor */
		if (dc_pop(&datum) == DC_SUCCESS){
			tmpint = 0;
			if (datum.dc_type == DC_NUMBER)
				tmpint = dc_tell_scale(datum.v.number, DC_TOSS);
			dc_push(dc_int2data(tmpint));
		}
		break;
	case 'Z':	/* replace the datum on the top-of-stack with its length */
		if (dc_pop(&datum) == DC_SUCCESS)
			dc_push(dc_int2data(dc_tell_length(datum, DC_TOSS)));
		break;

	case ':':	/* store into array */
		if (peekc == EOF)
			return DC_EOF_ERROR;
		if (dc_pop(&datum) == DC_SUCCESS){
			tmpint = -1;
			if (datum.dc_type == DC_NUMBER)
				tmpint = dc_num2int(datum.v.number, DC_TOSS);
			if (dc_pop(&datum) == DC_SUCCESS){
				if (tmpint < 0)
					fprintf(stderr,
							"%s: array index must be a nonnegative integer\n",
							progname);
				else
					dc_array_set(peekc, tmpint, datum);
			}
		}
		return DC_EATONE;
	case ';':	/* retreive from array */
		if (peekc == EOF)
			return DC_EOF_ERROR;
		if (dc_pop(&datum) == DC_SUCCESS){
			tmpint = -1;
			if (datum.dc_type == DC_NUMBER)
				tmpint = dc_num2int(datum.v.number, DC_TOSS);
			if (tmpint < 0)
				fprintf(stderr,
						"%s: array index must be a nonnegative integer\n",
						progname);
			else
				dc_push(dc_array_get(peekc, tmpint));
		}
		return DC_EATONE;

	default:	/* What did that user mean? */
		fprintf(stderr, "%s: ", progname);
		dc_show_id(stdout, c, " unimplemented\n");
		break;
	}
	return DC_OKAY;
}


/* takes a string and evals it */
static int
evalstr DC_DECLARG((string))
	dc_data *string DC_DECLEND
{
	const char *s;
	const char *end;
	const char *p;
	size_t len;
	int c;
	int peekc;
	int count;
	int negcmp;
	int next_negcmp = 0;
	int tail_depth = 1; /* how much tail recursion is active */
	dc_data evalstr;

	if (string->dc_type != DC_STRING){
		fprintf(stderr,
				"%s: eval called with non-string argument\n",
				progname);
		return DC_OKAY;
	}
	interrupt_seen = 0;
	s = dc_str2charp(string->v.string);
	end = s + dc_strlen(string->v.string);
	while (s < end && interrupt_seen==0){
		c = *(const unsigned char *)s++;
		peekc = EOF;
		if (s < end)
			peekc = *(const unsigned char *)s;
		negcmp = next_negcmp;
		next_negcmp = 0;
		switch (dc_func(c, peekc, negcmp)){
		case DC_OKAY:
			break;
		case DC_EATONE:
			if (peekc != EOF)
				++s;
			break;
		case DC_EVALREG:
			/*commands which return this guarantee that peekc!=EOF*/
			++s;
			if (dc_register_get(peekc, &evalstr) != DC_SUCCESS)
				break;
			dc_push(evalstr);
			/*@fallthrough@*/
		case DC_EVALTOS:
			/*skip trailing whitespace to assist tail-recursion detection*/
			while (s<end && (*s==' '||*s=='\t'||*s=='\n'||*s=='#')){
				if (*s++ == '#')
					s = skip_past_eol(s, end);
			}
			if (dc_pop(&evalstr) == DC_SUCCESS){
				if (evalstr.dc_type == DC_NUMBER){
					dc_push(evalstr);
				}else if (evalstr.dc_type != DC_STRING){
					dc_garbage("at top of stack", -1);
				}else if (s == end){
					/*handle tail recursion*/
					dc_free_str(&string->v.string);
					*string = evalstr;
					s = dc_str2charp(string->v.string);
					end = s + dc_strlen(string->v.string);
					++tail_depth;
				}else if (dc_eval_and_free_str(&evalstr) == DC_QUIT){
					if (unwind_depth > 0){
						--unwind_depth;
						return DC_QUIT;
					}
					return DC_OKAY;
				}
			}
			break;
		case DC_QUIT:
			if (unwind_depth >= tail_depth){
				unwind_depth -= tail_depth;
				return DC_QUIT;
			}
			/*adjust tail recursion accounting and continue*/
			tail_depth -= unwind_depth;
			break;

		case DC_INT:
			input_str_string = s - 1;
			dc_push(dc_getnum(input_str, dc_ibase, &peekc));
			s = input_str_string;
			if (peekc != EOF)
				--s;
			break;
		case DC_STR:
			count = 1;
			for (p=s; p<end && count>0; ++p)
				if (*p == ']')
					--count;
				else if (*p == '[')
					++count;
			len = (size_t) (p - s);
			dc_push(dc_makestring(s, (count==0 ? len-1 : len)));
			s = p;
			break;
		case DC_SYSTEM:
			s = dc_system(s);
			break;
		case DC_COMMENT:
			s = skip_past_eol(s, end);
			break;
		case DC_NEGCMP:
			next_negcmp = 1;
			break;

		case DC_EOF_ERROR:
			if (ferror(stdin)) {
				fprintf(stderr, "%s: ", progname);
				perror("error reading stdin");
				return DC_FAIL;
			}
			fprintf(stderr, "%s: unexpected EOS\n", progname);
			return DC_OKAY;
		}
	}
	return DC_OKAY;
}

/* wrapper around evalstr, to handle top-level QUIT requests correctly*/
int
dc_evalstr(dc_data *string)
{
   switch (evalstr(string)) {
   case DC_OKAY:
	   return DC_SUCCESS;
   case DC_QUIT:
	   if (unwind_noexit != DC_TRUE)
		   return DC_FAIL;
	   return DC_SUCCESS;
   default:
	   return DC_FAIL;
   }
}



/* This is the main function of the whole DC program.
 * Reads the file described by fp, calls dc_func to do
 * the dirty work, and takes care of dc_func's shortcomings.
 */
int
dc_evalfile DC_DECLARG((fp))
	FILE *fp DC_DECLEND
{
	int c;
	int peekc;
	int negcmp;
	int next_negcmp = 0;
	typedef void (*handler_t)(int);
	handler_t sigint_handler = dc_trap_interrupt;
	handler_t sigint_default = signal(SIGINT, SIG_IGN);
	dc_data datum;

	/* Signals are awkward: we want to allow interactive users
	 * to break out of long running macros, but otherwise we
	 * prefer that SIGINT not be given any special treatment.
	 * Sometimes "no special treatment" means to continue to
	 * *ignore* the signal, but usually it means to kill the program.
	 */
	signal(SIGINT, sigint_default);
#ifdef HAVE_UNISTD_H
	/* don't trap SIGINT if we can tell that we are not reading from a tty */
	if ( ! isatty(fileno(fp)) )
		sigint_handler = sigint_default;
#endif

	stdin_lookahead = EOF;
	for (c=getc(fp); c!=EOF; c=peekc){
		peekc = getc(fp);
		/*
		 * The following if() is the only place where ``stdin_lookahead''
		 * might be set to other than EOF:
		 */
		if (fp == stdin)
			stdin_lookahead = peekc;
		/*
		 * In the switch(), cases which naturally update peekc
		 * (unconditionally) do not have to update or reference
		 * stdin_lookahead; other functions use the predicate:
		 *    stdin_lookahead != peekc  &&  fp == stdin
		 * to recognize the case where:
		 *   a) stdin_lookahead == EOF (stdin and peekc are not in sync)
		 *   b) peekc != EOF (resync is possible)
		 *   c) fp == stdin (resync is relevant)
		 * The whole stdin_lookahead complication arises because the
		 * '?' command may be invoked from an arbritrarily deeply
		 * nested dc_evalstr(), '?' reads exclusively from stdin,
		 * and this winds up making peekc invalid when fp==stdin.
		 */
		negcmp = next_negcmp;
		next_negcmp = 0;
		signal(SIGINT, sigint_handler);
		switch (dc_func(c, peekc, negcmp)){
		case DC_OKAY:
			if (stdin_lookahead != peekc  &&  fp == stdin)
				peekc = getc(fp);
			break;
		case DC_EATONE:
			peekc = getc(fp);
			break;
		case DC_EVALREG:
			/*commands which send us here shall guarantee that peekc!=EOF*/
			c = peekc;
			peekc = getc(fp);
			stdin_lookahead = peekc;
			if (dc_register_get(c, &datum) != DC_SUCCESS)
				break;
			dc_push(datum);
			/*@fallthrough@*/
		case DC_EVALTOS:
			if (stdin_lookahead != peekc  &&  fp == stdin)
				peekc = getc(fp);
			if (dc_pop(&datum) == DC_SUCCESS){
				if (datum.dc_type == DC_NUMBER){
					dc_push(datum);
				}else if (datum.dc_type == DC_STRING){
					if (dc_eval_and_free_str(&datum) == DC_QUIT){
						if (unwind_noexit != DC_TRUE)
							goto reset_and_exit_quit;
						fprintf(stderr, "%s: Q command argument exceeded \
string execution depth\n", progname);
					}
				}else{
					dc_garbage("at top of stack", -1);
				}
			}
			break;
		case DC_QUIT:
			if (unwind_noexit != DC_TRUE)
				goto reset_and_exit_quit;
			fprintf(stderr,
					"%s: Q command argument exceeded string execution depth\n",
					progname);
			if (stdin_lookahead != peekc  &&  fp == stdin)
				peekc = getc(fp);
			break;

		case DC_INT:
			input_fil_fp = fp;
			input_pushback = c;
			ungetc(peekc, fp);
			dc_push(dc_getnum(input_fil, dc_ibase, &peekc));
			if (ferror(fp))
				goto error_fail;
			break;
		case DC_STR:
			ungetc(peekc, fp);
			datum = dc_readstring(fp, '[', ']');
			if (ferror(fp))
				goto error_fail;
			dc_push(datum);
			peekc = getc(fp);
			break;
		case DC_SYSTEM:
			ungetc(peekc, fp);
			datum = dc_readstring(fp, '\n', '\n');
			if (ferror(fp))
				goto error_fail;
			(void)dc_system(dc_str2charp(datum.v.string));
			dc_free_str(&datum.v.string);
			peekc = getc(fp);
			break;
		case DC_COMMENT:
			while (peekc!=EOF && peekc!='\n')
				peekc = getc(fp);
			if (peekc != EOF)
				peekc = getc(fp);
			break;
		case DC_NEGCMP:
			next_negcmp = 1;
			break;

		case DC_EOF_ERROR:
			if (ferror(fp))
				goto error_fail;
			fprintf(stderr, "%s: unexpected EOF\n", progname);
			goto reset_and_exit_fail;
		}

		if (interrupt_seen)
			fprintf(stderr, "\nInterrupt!\n");
		interrupt_seen = 0;
		signal(SIGINT, sigint_default);
	}
	if (!ferror(fp))
		goto reset_and_exit_success;

error_fail:
	fprintf(stderr, "%s: ", progname);
	perror("error reading input");
	return DC_FAIL;
reset_and_exit_fail:
	signal(SIGINT, sigint_default);
	return DC_FAIL;
reset_and_exit_quit:
reset_and_exit_success:
	signal(SIGINT, sigint_default);
	return DC_SUCCESS;
}


/*
 * Local Variables:
 * mode: C
 * tab-width: 4
 * End:
 * vi: set ts=4 :
 */
