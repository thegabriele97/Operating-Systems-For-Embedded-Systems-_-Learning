#include "tpl_os.h"
#include "Arduino.h"
#include "stdint.h"

uint8_t led = 3;

void setup() {
	Serial.begin(115200);
	Serial.println(" - System booted up.");

	pinMode(led, OUTPUT);
	digitalWrite(led, LOW);
}
