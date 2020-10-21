#include "tpl_os.h"
#include "MyArduino.h"
#include "stdint.h"

extern uint8_t count;

void StartupHook(void) {

	Serial.println("****************************************");
	Serial.println("***            ARDUINO OS            ***");
	Serial.println("***     BASED ON ERIKA ENTEPRISE     ***");
	Serial.println("***     Developed by @gabriele97     ***");
	Serial.println("****************************************");

	_DDRD->pins.pin3 = 1;
	_PORTD->pins.pin3 = 0;

	count = 0;
}

void ErrorHook(StatusType status) {
	Serial.println("An error occurred (?) !!!");
}
