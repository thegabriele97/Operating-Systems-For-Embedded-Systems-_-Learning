#include "tpl_os.h"
#include "Arduino.h"
#include "stdint.h"
#include "comm_fnct.h"

/** CONSTS **/
/*
 *	The size of a predefined messages array.
 *	Default value is 5
*/
#define PREDEF_MSGS_ARRAY_LEN 		0x0005

/*
 *	The buffer size of a morse encoded character.
 *	Default value is 4
*/
#define MORSE_CODING_BUFFER_LEN 	0x0004

/*
 *	The delay between a bit and another.
 *	
 *	PS: Please note that value 1000 equals to 1024 ms, 
 *		so 1 second is less than value 1000
*/
#define BIT_TIMING_MS				0x0062

/*
 *	How much time the display must stay off before starting a new message
 *	
 * 	PS: Please note that value 1000 equals to 1024 ms, 
 *		so 1 second is less than value 1000
*/
#define INTERMESSAGE_PAUSE_MS		0x01e8

/*
 *	How much time the display can be used before interrupted.
 *	
 *	PS: Please note that value 1000 equals to 1024 ms, 
 *		so 1 second is less than value 1000
*/
#define MAX_MSG_LENGTH_MS			0x2aea4

/** MACRO **/
#define SEND_MULTIPLE_BITS_WEVENTS(bits, pin, times) 			 \
	SetRelAlarm(ALARMBitTiming, BIT_TIMING_MS, BIT_TIMING_MS);   \
	send_multiple_bits(bits, pin, times);						 \
	CancelAlarm(ALARMBitTiming);

#define ACTION_WVALID_FLAG(flag_to_check, action)				 \
	if (flag_to_check) {										 \
		action;													 \
	}

#define SEND_INTERWORD_PAUSE(pin) SEND_MULTIPLE_BITS_WEVENTS(0x00, pin, 4)
#define SEND_INTERCODEWORD_PAUSE(pin) SEND_MULTIPLE_BITS_WEVENTS(0x00, pin, 3)

/** CONST GLOBAL VARS **/
extern uint8_t MORSE_LED; /* defined in code.cpp */
static char *PREDEF_MSGS[PREDEF_MSGS_ARRAY_LEN] = {
	(char *)"A FEATHER IN THE HAND IS BETTER THAN A BIRD IN THE AIR",
	(char *)"A SHORT PENCIL IS USUALLY BETTER THAN A LONG MEMORY ANY DAY",
	(char *)"ACCEPT SOMETHING THAT YOU CANNOT CHANGE AND YOU WILL FEEL BETTER",
	(char *)"ADVENTURE CAN BE REAL HAPPINESS",
	(char *)"ALL THE EFFORT YOU ARE MAKING WILL ULTIMATELY PAY OFF"
};

/** GLOBAL VARS	 **/
volatile bool is_time_expired;
static uint8_t msg_index = 0x00;

TASK(TaskTwitterer) {
	long total_time;

	do {
		is_time_expired = false;
		SetRelAlarm(ALARMStopDisplay, MAX_MSG_LENGTH_MS, 0x00);

		do {
			Serial.print("Sending msg #");
			Serial.print(msg_index);

			total_time = millis();
			ActivateTask(TaskSender);
			WaitEvent(EVTMsgSendCompleted);

			total_time = millis() - total_time;
			Serial.print(" - Elapsed: ");
			Serial.println(total_time);

		} while (ClearEvent(EVTMsgSendCompleted), !is_time_expired);

		SetRelAlarm(ALARMMsgPause, INTERMESSAGE_PAUSE_MS, 0x0);
		msg_index = (msg_index + 1) % PREDEF_MSGS_ARRAY_LEN;

		WaitEvent(EVTMsgPause);
		ClearEvent(EVTMsgPause);
	} while(true);

	TerminateTask();
};

TASK(TaskSender) {
	morse_t coded_char_buff[MORSE_CODING_BUFFER_LEN];
	uint8_t i;
	char *msg_ch_ptr;
	long total_time;

	for (msg_ch_ptr = PREDEF_MSGS[msg_index]; !is_time_expired && *msg_ch_ptr; msg_ch_ptr++) {

		if (*msg_ch_ptr == ' ') {
			SEND_INTERWORD_PAUSE(MORSE_LED);
			continue;
		}
		
		//total_time = millis();
		char2morse(*msg_ch_ptr, coded_char_buff);
		//Serial.print("char2morse: ");
		//Serial.println(millis() - total_time);

		for (i = 0; i < MORSE_CODING_BUFFER_LEN && coded_char_buff[i] != NILL && !is_time_expired; i++) {
			SetRelAlarm(ALARMBitTiming, BIT_TIMING_MS, BIT_TIMING_MS);
			send_bits(coded_char_buff[i], MORSE_LED);
			ACTION_WVALID_FLAG(!is_time_expired, send_bits(0x00, MORSE_LED));
			CancelAlarm(ALARMBitTiming);
		}

		ACTION_WVALID_FLAG(!is_time_expired, SEND_INTERCODEWORD_PAUSE(MORSE_LED));
	}

	ACTION_WVALID_FLAG(!is_time_expired, SEND_INTERWORD_PAUSE(MORSE_LED));
	SetEvent(TaskTwitterer, EVTMsgSendCompleted);

	TerminateTask();
};
