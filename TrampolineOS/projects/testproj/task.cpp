#include "tpl_os.h"
#include "Arduino.h"
#include "stdint.h"

extern uint8_t led;

TASK(Task1) {
	digitalWrite(led, digitalRead(led) ^ 1); //toggling led
	TerminateTask();
};
