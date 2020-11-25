#ifndef COMMON_FNCT_H
#define COMMON_FNCT_H

#include "stdint.h"

/** CONSTS **/

/*
 *	The delay between a bit and another.
 *	
 *	PS: Please note that value 1000 equals to 1024 ms, 
 *		so 1 second is less than value 1000
 */
#define BIT_TIMING_MS				0x0062

/*
 *	The inter codeword pause.
 *  Default value is 2
 */
#define CODEWORD_PAUSE				0x0002

/*
 *	The inter word pause.
 *  Default value is 4
 */
#define WORD_PAUSE				    0x0004

/*
 *	The size of a predefined messages array.
 *	Default value is 5
 */
#define PREDEF_MSGS_ARRAY_LEN 		0x0005

/*
 *	How much time the display must stay off before starting a new message
 *	
 * 	PS: Please note that value 1000 equals to 1024 ms, 
 *		so 1 second is less than value 1000
 */
#define INTERMESSAGE_PAUSE_MS		0x01e8

/*
 *	How much time the display can be used before being interrupted.
 *	
 *	PS: Please note that value 1000 equals to 1024 ms, 
 *		so 1 second is less than value 1000
 */
#define MAX_MSG_LENGTH_MS			0x2aea4


/* TYPE DEFINITIONS */
typedef uint16_t morse_t;

/* FUNCTION PROTOTYPES */
void do_sending(uint8_t msg_index);

#endif