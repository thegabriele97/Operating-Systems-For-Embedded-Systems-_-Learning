#include "ee.h"
#include "Arduino.h"
#include "stdint.h"
#include "MyArduino.h"

uint8_t count;

TASK(Task1) {

	GetResource(RES_GlobalCountVar);
	++count;
	count %= 10;

	header_serial_print(__FILE__, __FUNCTION__);
	Serial.println("COUNT = " + String(count));

	ReleaseResource(RES_GlobalCountVar);

	TerminateTask();
};

TASK(Task2) {

	GetResource(RES_GlobalCountVar);

	header_serial_print(__FILE__, __FUNCTION__);
	Serial.print("COUNT = " + String(count));

	if (count < 5) {
		_PORTD->pins.pin3 ^= 1;
		Serial.println(" : Toggling led " + String((_PORTD->pins.pin3) ? "on" : "off"));
	} else {
		Serial.println(" : Not toggling led");
	}

	ReleaseResource(RES_GlobalCountVar);

	TerminateTask();
};
