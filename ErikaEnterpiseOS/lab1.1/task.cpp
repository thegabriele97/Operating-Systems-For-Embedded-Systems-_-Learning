/* ERIKA Enterprise. */
#include "ee.h"

/* Arduino SDK. */
#include "Arduino.h"
#include "MyArduino.h"
#include "stdio.h"

TASK(Task0) {
	//serial->println("task.cpp: task0 has been started!");

	TerminateTask();
};

TASK(Task1) {

	header_serial_print(__FILE__, __FUNCTION__);
	Serial.println("has been started!");

	while(WaitEvent(0x1) == E_OK) {
		ClearEvent(0x1);

		GetResource(RES_PORTD_REG);
		PORTD ^= MASK(3);

		header_serial_print(__FILE__, __FUNCTION__);
		binary_serial_print_("PORTD = 0b", PORTD);

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
		PORTD ^= MASK(7);

		header_serial_print(__FILE__, __FUNCTION__);
		binary_serial_print_("PORTD = 0b", PORTD);

		ReleaseResource(RES_PORTD_REG);
	}

	header_serial_print(__FILE__, __FUNCTION__);
	Serial.println("closing...!");
	TerminateTask();
};
