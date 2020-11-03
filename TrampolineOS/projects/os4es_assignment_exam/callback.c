#include "Arduino.h"
#include "tpl_os.h"
#include "tpl_app_config.h"

extern uint8_t expired_time_counter; /* defined in task.cpp */
extern uint8_t counter_multiplier;	 /* defined in task.cpp */
extern uint8_t MORSE_LED;            /* defined in code.cpp */

ALARMCALLBACK(ALARMStopDisplay) {
	if ((++expired_time_counter) == counter_multiplier) {
		digitalWrite(MORSE_LED, 0x00);
	}
};