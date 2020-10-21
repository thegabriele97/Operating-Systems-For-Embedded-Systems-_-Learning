#include "ee.h"
#include "Arduino.h"

void idle_hook(void) {
	if (serialEventRun) {
		serialEventRun();
	}
}

int main(void) {

	init();

	Serial.begin(115200);
	Serial.println(" - System booted up.");
	Serial.println(" - Starting OS...");

#if defined(USBCON)
	USBDevice.attach();
#endif

	StartOS(OSDEFAULTAPPMODE);

	return 0;
}

