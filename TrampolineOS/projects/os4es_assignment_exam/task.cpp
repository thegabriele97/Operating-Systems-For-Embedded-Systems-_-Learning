#include "tpl_os.h"
#include "Arduino.h"
#include "stdint.h"
#include "comm_fnct.h"

/** MACRO & CONSTS **/
#define PREDEF_MSGS_ARRAY_LEN 		0x0005
#define MORSE_CODING_BUFFER_LEN 	0x0004
#define BIT_TIMING_MS				0x0064
#define INTERMESSAGE_PAUSE_MS		0x01f4
#define MAX_MSG_LENGTH_MS			0x7530

#define SEND_MULTIPLE_BITS_WEVENTS(bits, pin, times) 			 \
	SetRelAlarm(ALARMBitTiming, BIT_TIMING_MS, BIT_TIMING_MS);   \
	send_multiple_bits(bits, pin, times);						 \
	CancelAlarm(ALARMBitTiming);								 \

#define SEND_INTERWORD_PAUSE(pin) SEND_MULTIPLE_BITS_WEVENTS(0x00, pin, 4)
#define SEND_INTERCODEWORD_PAUSE(pin) SEND_MULTIPLE_BITS_WEVENTS(0x00, pin, 3);

extern uint8_t MORSE_LED;
static char *PREDEF_MSGS[PREDEF_MSGS_ARRAY_LEN] = {
	"A FEATHER IN THE HAND IS BETTER THAN A BIRD IN THE AIR",
	"A SHORT PENCIL IS USUALLY BETTER THAN A LONG MEMORY ANY DAY",
	"ACCEPT SOMETHING THAT YOU CANNOT CHANGE AND YOU WILL FEEL BETTER",
	"ADVENTURE CAN BE REAL HAPPINESS",
	"ALL THE EFFORT YOU ARE MAKING WILL ULTIMATELY PAY OFF"
};

/** GLOBAL VARS	 **/
static uint8_t msg_index = 0x00;

TASK(TaskTwitterer) {
	long start, total_time, time_accumulator;

	do {
		time_accumulator = 0;

		do {
		#ifdef SERIAL_DBG
			Serial.print("Msg: ");
			Serial.print(msg_index);
		#endif

			start = millis();
			ActivateTask(TaskSender);
			WaitEvent(EVTMsgSendCompleted);

			ClearEvent(EVTMsgSendCompleted);
			total_time = millis() - start;
			time_accumulator += total_time;

		#ifdef SERIAL_DBG
			Serial.print(" - Elapsed time: ");
			Serial.print(total_time);
			Serial.print(" - Accumulator: ");
			Serial.println(time_accumulator);
		#endif

		} while (time_accumulator + total_time <= MAX_MSG_LENGTH_MS);

		SetRelAlarm(ALARMMsgPause, INTERMESSAGE_PAUSE_MS, INTERMESSAGE_PAUSE_MS);
		msg_index = (msg_index + 1) % PREDEF_MSGS_ARRAY_LEN;
		WaitEvent(EVTMsgPause);
		
		CancelAlarm(ALARMMsgPause);
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
			SEND_INTERWORD_PAUSE(MORSE_LED);
			continue;
		}
		
		char2morse(*msg_ch_ptr, coded_char_buff);
		for (i = 0; i < MORSE_CODING_BUFFER_LEN && coded_char_buff[i] != NILL; i++) {
			SetRelAlarm(ALARMBitTiming, BIT_TIMING_MS, BIT_TIMING_MS);
			send_bits(coded_char_buff[i], MORSE_LED);
			send_bits(0x00, MORSE_LED);
			CancelAlarm(ALARMBitTiming);
		}

		SEND_INTERCODEWORD_PAUSE(MORSE_LED);
	}

	SEND_INTERWORD_PAUSE(MORSE_LED);
	SetEvent(TaskTwitterer, EVTMsgSendCompleted);

	TerminateTask();
};
