#include "tpl_os.h"
#include "Arduino.h"
#include "stdint.h"

uint8_t led = 0xd;

//const PROGMEM String str = "Hi! This is a test to see how memory this thing is going to occupy in RAM or where it wants";

void setup() {
	//Serial.begin(115200);
	//Serial.println(" - System booted up.");

	pinMode(led, OUTPUT);
	digitalWrite(led, LOW);
	//Serial.println(str);

	//Serial.println(" - System configured.");
	//Serial.println(" - Starting up...");
}
