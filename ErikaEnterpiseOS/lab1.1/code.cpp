#include "ee.h"
#include "Arduino.h"
#include "MyArduino.h"

void loop(void) {

}

void idle_hook(void) {
	loop();
	if (serialEventRun)
		serialEventRun();
}

void setup(void) {

}

int main(void) {

	init();

	Serial.begin(115200);
	header_serial_print(__FILE__, __FUNCTION__);
	Serial.println("Hello world!!");

	setup();

#if defined(USBCON)
	USBDevice.attach();
#endif

	StartOS(OSDEFAULTAPPMODE);

	return 0;

}

