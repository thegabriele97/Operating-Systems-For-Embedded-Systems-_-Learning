#include "ee.h"
#include "Arduino.h"
#include "MyArduino.h"
#include "stdio.h"

void StartupHook() {

	DDRD |= (MASK(3) | MASK(7));
	PORTD &= ~(MASK(3) | MASK(7));

	header_serial_print(__FILE__, __FUNCTION__);
	binary_serial_print_("DDRD = 0b", DDRD, false);
	binary_serial_print_(" PORTD = 0b", PORTD);
}
