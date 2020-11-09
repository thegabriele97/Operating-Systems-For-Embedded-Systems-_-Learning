#include "tpl_os.h"
#include "Arduino.h"
#include "stdint.h"
#include "avr/io.h"

#define SERIAL_BAUDRATE 115200

uint8_t MORSE_LED = 0x7;

void setup() {
#ifdef DEBUG
	Serial.begin(SERIAL_BAUDRATE);
#endif

	Serial.begin(SERIAL_BAUDRATE);

	// Setting timer0 to 0
	TCNT2 = 0x00;

	// Setting TOIE in order to enable interrupt
	TIMSK2 |= 0x1;

	// Clearing timer 2 configuration registers A and B
	TCCR2A = 0x0;
	TCCR2B = 0x0;

	// Setting scalar to 1: CS02, CS01, CS00 = 0b001
	TCCR2B |= 0x01;

	/*
	 * Now we have a Timer0 with a 16MHz clock. 
	 * Ath each clock cycle, TCNT0 goes up by 1.
	 * When it reaches 0xff, we have overflow and it
	 * means an interrupt: this means that each interrupt
	 * occurs every 16 us and in order to have a
	 * counter that counts 1 every 100 ms
	 * we need exactly 6250 ticks!
	 */

	pinMode(MORSE_LED, OUTPUT);
	digitalWrite(MORSE_LED, LOW);
}
