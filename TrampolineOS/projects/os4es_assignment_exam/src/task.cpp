#include "tpl_os.h"
#include "Arduino.h"
#include "stdint.h"
#include "comm_fnct.h"

/** GLOBAL VARS	 **/
volatile bool is_time_expired;

TASK(TaskTwitterer) {
	static uint8_t msg_index = 0x00;
#ifdef DEBUG
	long total_time;
#endif

	do {
		is_time_expired = false;
		SetRelAlarm(ALARMStopDisplay, MAX_MSG_LENGTH_MS, 0x00);

		do {
			#ifdef DEBUG
				Serial.print("Msg #");
				Serial.print(msg_index);
				total_time = millis();
			#endif
			
			do_sending(msg_index);

			#ifdef DEBUG
				total_time = millis() - total_time;
				Serial.print(" - Elapsed: ");
				Serial.println(total_time);
			#endif
		} while (!is_time_expired);

		SetRelAlarm(ALARMGeneralOneShot, INTERMESSAGE_PAUSE_MS, 0x0);
		msg_index = (msg_index + 1) % PREDEF_MSGS_ARRAY_LEN;

		WaitEvent(EVTGeneralOneShot);
		ClearEvent(EVTGeneralOneShot);
	} while(true);

	TerminateTask();
};
