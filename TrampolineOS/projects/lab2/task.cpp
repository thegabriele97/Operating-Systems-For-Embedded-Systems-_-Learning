#include "tpl_os.h"
#include "Arduino.h"
#include "stdint.h"
#include "string.h"

extern uint8_t led;

typedef enum {
    LINE = '-',
    DOT  = '.'
} morse_t;

inline void sendMultipleBits(uint8_t bit, uint8_t cnt);
inline void sendBit(uint8_t bit);
void char2symbols(char to_code, morse_t *sym_storage);
inline void morse2syms(char *morse_str, morse_t *sym_storage);

TASK(CallingTask) {
	ActivateTask(SOSTask);
	TerminateTask();
};

TASK(SOSTask) {
	morse_t symbols[3];
	uint8_t i, j;
	char *str = "SOS";

	SetRelAlarm(SymbolTiming, 100, 100);					  	//starting the alarm for symbols timing sync

	for (i = 0; i < strlen(str); i++) {
		
		Serial.print(str[i]);
		char2symbols(str[i], symbols);
		for (j = 0; j < 3; j++) {
			sendMultipleBits(1, (symbols[j] == DOT) ? 1 : 3); 	//sending symbol
			sendMultipleBits(0, 1);								//sending pause between symbols
		}

		sendMultipleBits(0, 3);							  		//sending pause between codewords
	}

	sendMultipleBits(0, 4);									  	//sending pause between messages
	Serial.println();

	CancelAlarm(SymbolTiming);								  	//stopping the sync alarm
	TerminateTask();
};

inline void sendMultipleBits(uint8_t bit, uint8_t cnt) {
	int i;

	for (i = 0; i < cnt; i++) {
		sendBit(bit);
	}
}

inline void sendBit(uint8_t bit) {
	Serial.print(bit);
	digitalWrite(led, bit);
	WaitEvent(SymbolTimingEvt);
	ClearEvent(0x2);
}

void char2symbols(char to_code, morse_t *sym_storage) {
    
    switch (toLowerCase(to_code)) {
		case 's':
			morse2syms("...", sym_storage);
			break;
		
		case 'o':
			morse2syms("---", sym_storage);
			break;
	}
}

inline void morse2syms(char *morse_str, morse_t *sym_storage) {
	int i;

	for (i = 0; i < 3; i++) {
		sym_storage[i] = (morse_t)morse_str[i];
	}
}