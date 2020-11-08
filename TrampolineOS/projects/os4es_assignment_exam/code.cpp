#include "tpl_os.h"
#include "Arduino.h"
#include "stdint.h"

#define SERIAL_BAUDRATE 115200

uint8_t MORSE_LED = 0x7;

void setup() {
#ifdef DEBUG
	Serial.begin(SERIAL_BAUDRATE);
#endif

	pinMode(MORSE_LED, OUTPUT);
	digitalWrite(MORSE_LED, LOW);
}
