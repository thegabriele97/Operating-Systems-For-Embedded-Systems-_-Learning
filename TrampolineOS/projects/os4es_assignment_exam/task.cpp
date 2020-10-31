#include "tpl_os.h"
#include "Arduino.h"
#include "stdint.h"
#include "comm_fnct.h"

/** MACRO & CONSTS **/
#define PREDEF_MSGS_ARRAY_LEN 		0x005
#define MORSE_CODING_BUFFER_LEN 	0x004
#define BIT_TIMING_MSG				0x064

#define SEND_MULTIPLE_BITS_WEVENTS(bits, pin, times) 			 \
	SetRelAlarm(ALARMBitTiming, BIT_TIMING_MSG, BIT_TIMING_MSG); \
	send_multiple_bits(bits, pin, times);						 \
	CancelAlarm(ALARMBitTiming);								 \

extern uint8_t MORSE_LED;
static char *PREDEF_MSGS[PREDEF_MSGS_ARRAY_LEN] = {
	"A FEATHER IN THE HAND IS BETTER THAN A BIRD IN THE AIR",
	"A SHORT PENCIL IS USUALLY BETTER THAN A LONG MEMORY ANY DAY",
	"ACCEPT SOMETHING THAT YOU CANNOT CHANGE AND YOU WILL FEEL BETTER",
	"ADVENTURE CAN BE REAL HAPPINESS",
	"n ALL THE EFFORT YOU ARE MAKING WILL ULTIMATELY PAY OFF"
};

/** GLOBAL VARS	 **/
static uint8_t msg_index = 0x00;

TASK(TaskTwitterer) {
	long start, total_time, time_accumulator;

	do {
		time_accumulator = 0;

		do {
			start = millis();
			ActivateTask(TaskSender);
			total_time = millis() - start;

			time_accumulator += total_time;

		} while (time_accumulator + total_time <= 30);

		SetRelAlarm(ALARMMsgPause, 500, 500);
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

	for (msg_ch_ptr = PREDEF_MSGS[msg_index]; *msg_ch_ptr; msg_ch_ptr++) {

		if (*msg_ch_ptr == ' ') {
			SEND_MULTIPLE_BITS_WEVENTS(0x00, MORSE_LED, 4);
			
			digitalWrite(13, digitalRead(13) ^ 1);
			continue;
		}
		
		char2morse(*msg_ch_ptr, coded_char_buff);
		Serial.print(*msg_ch_ptr);
		Serial.print(": ");
		Serial.print((uint32_t)*((uint32_t *)coded_char_buff), HEX);
		Serial.print("   :   ");
		
		for (i = 0; i < MORSE_CODING_BUFFER_LEN && coded_char_buff[i] != NILL; i++) {
			Serial.print(coded_char_buff[i], BIN);
			Serial.print(" - ");
			
			SetRelAlarm(ALARMBitTiming, BIT_TIMING_MSG, BIT_TIMING_MSG);
			send_bits(coded_char_buff[i], MORSE_LED);
			send_bits(0x00, MORSE_LED);
			CancelAlarm(ALARMBitTiming);
		}

		Serial.println("P");
		SEND_MULTIPLE_BITS_WEVENTS(0x00, MORSE_LED, 3);
	}

	TerminateTask();
};
