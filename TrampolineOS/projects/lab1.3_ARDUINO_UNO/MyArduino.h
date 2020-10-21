#ifndef MYARDUINO_H_
#define MYARDUINO_H_

#include "Arduino.h"
#include "stdint.h"

#define BUFFSIZ 256			// Used for temporary string buffer

#define _ARDUINO_UNO_

#define MASK(n) (1<<n)		// Used for bitwise operations


#ifdef _ARDUINO_UNO_
#define __IO_REG_ABS_ADDR(PORT) 		 ((uint8_t *)(PORT + _IO_REG_BASE_ADDR))

#define        _IO_REG_BASE_ADDR  		 0x20

/* PORTD */
#define  _PIND_BASEREL_BYTE_ADDR 		 0x09
#define  _DDRD_BASEREL_BYTE_ADDR 	     (_PIND_BASEREL_BYTE_ADDR + 1) 				//0x0A
#define _PORTD_BASEREL_BYTE_ADDR 		 (_PIND_BASEREL_BYTE_ADDR + 2) 				//0x0B

#define 		   _PIND_ABS_ADDR		 __IO_REG_ABS_ADDR(_PIND_BASEREL_BYTE_ADDR)
#define			  _PORTD_ABS_ADDR		 __IO_REG_ABS_ADDR(_PORTD_BASEREL_BYTE_ADDR)
#define			   _DDRD_ABS_ADDR		 __IO_REG_ABS_ADDR(_DDRD_BASEREL_BYTE_ADDR)
/* PORTD */

/* PORTC */
#define  _PINC_BASEREL_BYTE_ADDR 		 0x06
#define  _DDRC_BASEREL_BYTE_ADDR 	     (_PINC_BASEREL_BYTE_ADDR + 1) 				//0x07
#define _PORTC_BASEREL_BYTE_ADDR 		 (_PINC_BASEREL_BYTE_ADDR + 2) 				//0x08

#define 		   _PINC_ABS_ADDR		 __IO_REG_ABS_ADDR(_PINC_BASEREL_BYTE_ADDR)
#define			  _PORTC_ABS_ADDR		 __IO_REG_ABS_ADDR(_PORTC_BASEREL_BYTE_ADDR)
#define			   _DDRC_ABS_ADDR		 __IO_REG_ABS_ADDR(_DDRC_BASEREL_BYTE_ADDR)
/* PORTC */

/* PORTB */
#define  _PINB_BASEREL_BYTE_ADDR 		 0x03
#define  _DDRB_BASEREL_BYTE_ADDR 	     (_PINB_BASEREL_BYTE_ADDR + 1) 				//0x04
#define _PORTB_BASEREL_BYTE_ADDR 		 (_PINB_BASEREL_BYTE_ADDR + 2) 				//0x05

#define 		   _PINB_ABS_ADDR		 __IO_REG_ABS_ADDR(_PINB_BASEREL_BYTE_ADDR)
#define			  _PORTB_ABS_ADDR		 __IO_REG_ABS_ADDR(_PORTB_BASEREL_BYTE_ADDR)
#define			   _DDRB_ABS_ADDR		 __IO_REG_ABS_ADDR(_DDRB_BASEREL_BYTE_ADDR)
/* PORTC */

#endif

typedef union {
	struct {
		unsigned pin0 : 1;
		unsigned pin1 : 1;
		unsigned pin2 : 1;
		unsigned pin3 : 1;
		unsigned pin4 : 1;
		unsigned pin5 : 1;
		unsigned pin6 : 1;
		unsigned pin7 : 1;
	} pins;

	uint8_t reg;
} iopin_reg_t;

extern iopin_reg_t *_DDRD, *_PORTD, *_PIND;
extern iopin_reg_t *_DDRC, *_PORTC, *_PINC;
extern iopin_reg_t *_PINB, *_PORTB, *_PINB;

inline void header_serial_print(const char *file_name, const char *func_name) {
	Serial.print(file_name);
	Serial.print(":\t");
	Serial.print(func_name);
	Serial.print(":\t");
}

inline void binary_serial_print_(const char *msg, int val, bool ln_required = true) {
	Serial.print(msg);
	Serial.print(val, BIN);

	if (ln_required) {
		Serial.println();
	}

}

#endif /* MYARDUINO_H_ */
