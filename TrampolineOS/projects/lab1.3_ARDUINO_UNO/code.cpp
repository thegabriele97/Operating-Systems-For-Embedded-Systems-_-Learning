#include "tpl_os.h"
#include "Arduino.h"
#include "MyArduino.h"

extern uint8_t count;

void idle_hook(void) {
	if (serialEventRun) {
		serialEventRun();
	}
}

void setup() {
	Serial.begin(115200);
	Serial.println(" - System booted up.");
	Serial.println(" - Starting OS...");
	
	count = 0;
	
	_DDRD->pins.pin3 = 1;
	_PORTD->pins.pin3 = 1;
}
