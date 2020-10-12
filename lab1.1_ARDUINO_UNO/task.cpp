/* ERIKA Enterprise. */
#include "ee.h"

/* Arduino SDK. */
#include "Arduino.h"
#include "MyArduino.h"
#include "stdio.h"

TASK(Task0) {
	//serial->println("task.cpp: task0 has been started!");

	header_serial_print(__FILE__, __FUNCTION__);
	binary_serial_print_("My DDRD = 0b", _DDRD->reg);

	header_serial_print(__FILE__, __FUNCTION__);
	binary_serial_print_("Original DDRD = 0b", DDRD);

	TerminateTask();
};

TASK(Task1) {

	header_serial_print(__FILE__, __FUNCTION__);
	Serial.println("has been started!");

	while(WaitEvent(0x1) == E_OK) {
		ClearEvent(0x1);

		GetResource(RES_PORTD_REG);
		_PORTD->pins.pin3 ^= MASK(0);		//inverting the digital pin status

		//header_serial_print(__FILE__, __FUNCTION__);
		//binary_serial_print_("PORTD = 0b", _PORTD->reg);

		ReleaseResource(RES_PORTD_REG);
	}

	header_serial_print(__FILE__, __FUNCTION__);
	Serial.println("closing...!");
	TerminateTask();
};

TASK(Task2) {

	header_serial_print(__FILE__, __FUNCTION__);
	Serial.println("has been started!");

	while(WaitEvent(0x1) == E_OK) {
		ClearEvent(0x1);

		GetResource(RES_PORTD_REG);
		_PORTD->pins.pin7 ^= MASK(0);		//inverting the digital pin status

		//header_serial_print(__FILE__, __FUNCTION__);
		//binary_serial_print_("PORTD = 0b", _PORTD->reg);

		ReleaseResource(RES_PORTD_REG);
	}

	header_serial_print(__FILE__, __FUNCTION__);
	Serial.println("closing...!");
	TerminateTask();
};
