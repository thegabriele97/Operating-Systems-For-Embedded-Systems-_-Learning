/* A Bison parser, made by GNU Bison 3.5.3.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2020 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    DOTTEDDATE = 258,
    HYPHENDATE = 259,
    HOURMIN = 260,
    INT1DIGIT = 261,
    INT2DIGIT = 262,
    INT4DIGIT = 263,
    INT5_8DIGIT = 264,
    INT = 265,
    NOW = 266,
    AM = 267,
    PM = 268,
    NOON = 269,
    MIDNIGHT = 270,
    TEATIME = 271,
    SUN = 272,
    MON = 273,
    TUE = 274,
    WED = 275,
    THU = 276,
    FRI = 277,
    SAT = 278,
    TODAY = 279,
    TOMORROW = 280,
    NEXT = 281,
    MINUTE = 282,
    HOUR = 283,
    DAY = 284,
    WEEK = 285,
    MONTH = 286,
    YEAR = 287,
    JAN = 288,
    FEB = 289,
    MAR = 290,
    APR = 291,
    MAY = 292,
    JUN = 293,
    JUL = 294,
    AUG = 295,
    SEP = 296,
    OCT = 297,
    NOV = 298,
    DEC = 299,
    UTC = 300
  };
#endif
/* Tokens.  */
#define DOTTEDDATE 258
#define HYPHENDATE 259
#define HOURMIN 260
#define INT1DIGIT 261
#define INT2DIGIT 262
#define INT4DIGIT 263
#define INT5_8DIGIT 264
#define INT 265
#define NOW 266
#define AM 267
#define PM 268
#define NOON 269
#define MIDNIGHT 270
#define TEATIME 271
#define SUN 272
#define MON 273
#define TUE 274
#define WED 275
#define THU 276
#define FRI 277
#define SAT 278
#define TODAY 279
#define TOMORROW 280
#define NEXT 281
#define MINUTE 282
#define HOUR 283
#define DAY 284
#define WEEK 285
#define MONTH 286
#define YEAR 287
#define JAN 288
#define FEB 289
#define MAR 290
#define APR 291
#define MAY 292
#define JUN 293
#define JUL 294
#define AUG 295
#define SEP 296
#define OCT 297
#define NOV 298
#define DEC 299
#define UTC 300

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 25 "parsetime.y"

	char *	  	charval;
	int		intval;

#line 152 "y.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
