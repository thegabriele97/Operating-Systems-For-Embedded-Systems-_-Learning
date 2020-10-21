#include "tpl_os.h"
#include "Arduino.h"
#include "MyArduino.h"
#include "stdint.h"

uint8_t count;

TASK(Task1) {

	GetResource(RES_GlobalCountVar);
	++count;
	count %= 10;

	header_serial_print(__FILE__, __FUNCTION__);
	Serial.print("COUNT = ");
	Serial.println(count);

	ReleaseResource(RES_GlobalCountVar);

	TerminateTask();
};

TASK(Task2) {

	GetResource(RES_GlobalCountVar);

	header_serial_print(__FILE__, __FUNCTION__);
	Serial.print("COUNT = ");
	Serial.print(count);

	if (count < 5) {
		_PORTD->pins.pin3 ^= 1;
		Serial.print(" : Toggling led ");
		Serial.println(_PORTD->pins.pin3 ? "on" : "off");
	} else {
		Serial.println(" : Not toggling led");
	}

	ReleaseResource(RES_GlobalCountVar);

	TerminateTask();
};
