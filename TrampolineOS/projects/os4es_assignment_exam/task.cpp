#include "tpl_os.h"
#include "Arduino.h"
#include "stdint.h"
#include "comm_fnct.h"

/** CONSTS **/
#define PREDEF_MSGS_ARRAY_LEN 		0x0005
#define MORSE_CODING_BUFFER_LEN 	0x0004
#define BIT_TIMING_MS				0x0064
#define INTERMESSAGE_PAUSE_MS		0x01f4
#define COUNTER_TIMEXP_MAXVAL		0x0003
#define MAX_MSG_LENGTH_MS			0xea60

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
#define IS_TIME_EXPIRED(counter) (counter == counter_multiplier)

/** CONST GLOBAL VARS **/
extern uint8_t MORSE_LED; /* defined in code.cpp */
static char *PREDEF_MSGS[PREDEF_MSGS_ARRAY_LEN] = {
	"A FEATHER IN THE HAND IS BETTER THAN A BIRD IN THE AIR",
	"A SHORT PENCIL IS USUALLY BETTER THAN A LONG MEMORY ANY DAY",
	"ACCEPT SOMETHING THAT YOU CANNOT CHANGE AND YOU WILL FEEL BETTER",
	"ADVENTURE CAN BE REAL HAPPINESS",
	"ALL THE EFFORT YOU ARE MAKING WILL ULTIMATELY PAY OFF"
};

/** GLOBAL VARS	 **/
volatile uint8_t counter_multiplier = COUNTER_TIMEXP_MAXVAL;
volatile uint8_t expired_time_counter;
static uint8_t msg_index = 0x00;

TASK(TaskTwitterer) {
	long total_time;

	do {
		expired_time_counter = 0x00;
		SetRelAlarm(ALARMStopDisplay, MAX_MSG_LENGTH_MS, MAX_MSG_LENGTH_MS);

		do {
			Serial.print("Sending msg #");
			Serial.print(msg_index);

			total_time = millis();
			ActivateTask(TaskSender);
			WaitEvent(EVTMsgSendCompleted);

			total_time = millis() - total_time;
			Serial.print(" - Elapsed: ");
			Serial.println(total_time);

		} while (ClearEvent(EVTMsgSendCompleted), !IS_TIME_EXPIRED(expired_time_counter));

		SetRelAlarm(ALARMMsgPause, INTERMESSAGE_PAUSE_MS, 0x0);
		
		msg_index = (msg_index + 1) % PREDEF_MSGS_ARRAY_LEN;
		CancelAlarm(ALARMStopDisplay);

		WaitEvent(EVTMsgPause);
		ClearEvent(EVTMsgPause);
	} while(true);

	TerminateTask();
};

TASK(TaskSender) {
	morse_t coded_char_buff[MORSE_CODING_BUFFER_LEN];
	uint8_t i;
	char *msg_ch_ptr;

	for (msg_ch_ptr = PREDEF_MSGS[msg_index]; !IS_TIME_EXPIRED(expired_time_counter) && *msg_ch_ptr; msg_ch_ptr++) {

		if (*msg_ch_ptr == ' ') {
			SEND_INTERWORD_PAUSE(MORSE_LED);
			continue;
		}
		
		char2morse(*msg_ch_ptr, coded_char_buff);
		for (i = 0; i < MORSE_CODING_BUFFER_LEN && coded_char_buff[i] != NILL && !IS_TIME_EXPIRED(expired_time_counter); i++) {
			SetRelAlarm(ALARMBitTiming, BIT_TIMING_MS, BIT_TIMING_MS);
			send_bits(coded_char_buff[i], MORSE_LED);
			ACTION_WVALID_FLAG(!IS_TIME_EXPIRED(expired_time_counter), send_bits(0x00, MORSE_LED));
			CancelAlarm(ALARMBitTiming);
		}

		ACTION_WVALID_FLAG(!IS_TIME_EXPIRED(expired_time_counter), SEND_INTERCODEWORD_PAUSE(MORSE_LED));
	}

	ACTION_WVALID_FLAG(!IS_TIME_EXPIRED(expired_time_counter), SEND_INTERWORD_PAUSE(MORSE_LED));
	SetEvent(TaskTwitterer, EVTMsgSendCompleted);

	TerminateTask();
};
