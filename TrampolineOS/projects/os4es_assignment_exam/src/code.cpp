#include "tpl_os.h"
#include "Arduino.h"
#include "stdint.h"
#include "comm_fnct.h"
#include "avr/io.h"

#define SERIAL_BAUDRATE 115200

/** CONST GLOBAL VARS **/
uint8_t MORSE_LED = 0x7;
char *PREDEF_MSGS[PREDEF_MSGS_ARRAY_LEN] = {
	(char *)"A FEATHER IN THE HAND IS BETTER THAN A BIRD IN THE AIR",
	(char *)"A SHORT PENCIL IS USUALLY BETTER THAN A LONG MEMORY ANY DAY",
	(char *)"ACCEPT SOMETHING THAT YOU CANNOT CHANGE AND YOU WILL FEEL BETTER",
	(char *)"ADVENTURE CAN BE REAL HAPPINESS",
	(char *)"ALL THE EFFORT YOU ARE MAKING WILL ULTIMATELY PAY OFF"
};

void setup() {
#ifdef DEBUG
	Serial.begin(SERIAL_BAUDRATE);
#endif

//set timer1 interrupt at 1Hz
  TCCR1A = 0;// set entire TCCR1A register to 0
  TCCR1B = 0;// same for TCCR1B
  TCNT1  = 0;//initialize counter value to 0
  // set compare match register for 1hz increments
  OCR1A = 15624;// = (16*10^6) / (1*1024) - 1 (must be <65536)
  // turn on CTC mode
  TCCR1B |= (1 << WGM12);
  // Set CS10 and CS12 bits for 1024 prescaler
  TCCR1B |= (1 << CS12) | (1 << CS10);  
  // enable timer compare interrupt
  TIMSK1 |= (1 << OCIE1A);

	pinMode(MORSE_LED, OUTPUT);
	digitalWrite(MORSE_LED, LOW);
}
