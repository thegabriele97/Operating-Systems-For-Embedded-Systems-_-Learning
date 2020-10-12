#ifndef MYARDUINO_H_
#define MYARDUINO_H_

#include "Arduino.h"

#define BUFFSIZ 256			// Used for temporary string buffer
#define MASK(n) (1<<n)		// Used for bitwise operations

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
