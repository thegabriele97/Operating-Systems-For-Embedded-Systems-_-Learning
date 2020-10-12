#include "ee.h"
#include "Arduino.h"
#include "MyArduino.h"
#include "stdio.h"

void StartupHook() {

	_DDRD->reg  |=  (MASK(3) | MASK(7));
	_PORTD->reg &= ~(MASK(3) | MASK(7));

	header_serial_print(__FILE__, __FUNCTION__);
	binary_serial_print_("DDRD = 0b", _DDRD->reg, false);
	binary_serial_print_(" PORTD = 0b", _PORTD->reg);
}
