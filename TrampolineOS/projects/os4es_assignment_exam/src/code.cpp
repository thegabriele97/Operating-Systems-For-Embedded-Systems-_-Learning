#include "tpl_os.h"
#include "Arduino.h"
#include "stdint.h"
#include "comm_fnct.h"

#define SERIAL_BAUDRATE 115200

/** CONST GLOBAL VARS **/
uint8_t MORSE_LED = 0xd;
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

	pinMode(MORSE_LED, OUTPUT);
	digitalWrite(MORSE_LED, LOW);
}
