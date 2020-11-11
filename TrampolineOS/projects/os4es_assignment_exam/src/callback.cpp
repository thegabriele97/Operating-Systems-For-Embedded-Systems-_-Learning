#include "Arduino.h"
#include "tpl_os.h"
#include "tpl_app_config.h"

/*
 * The trampoline definition of this macro doesn't work
 * with my avr-cpp compiler :( 
 * But I think they forgot a ";" after the definition of
 * the function prototype, so let's redefine it correctly!
*/
#ifdef ALARMCALLBACK
#undef ALARMCALLBACK

#define ALARMCALLBACK(name)  					   \
			extern "C" void name##_callback(void); \
			void name##_callback(void)

#endif

extern bool is_time_expired;		 /* defined in task.cpp */
extern uint8_t MORSE_LED;            /* defined in code.cpp */

ALARMCALLBACK(ALARMStopDisplay) {
	is_time_expired = true;
	digitalWrite(MORSE_LED, 0x00);
}