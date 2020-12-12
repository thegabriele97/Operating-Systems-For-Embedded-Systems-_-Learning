#include "stdint.h"
#include "Arduino.h"
#include "tpl_os.h"
#include "comm_fnct.h"

/** MACRO **/
#define ACTION_WVALID_FLAG(flag_to_check, action) \
	if (flag_to_check) {                          \
		action;                                   \
	}

#define SEND_INTERWORD_PAUSE(pin) send_multiple_bits(0x00, pin, WORD_PAUSE)
#define SEND_INTERCODEWORD_PAUSE(pin) send_multiple_bits(0x00, pin, CODEWORD_PAUSE)

/** GLOBAL VARS **/

/*
 * LookUp Table for char to morse conversion.
 * Use the char itself (properly masked) as index of the table
 * 
 * Tip to understand it: You shall read it from right to left. 
 * The last '1' is meaningless and it's there
 * only for termination purpose
*/
morse_t morse_encoding[] = {
    0b000000001011101,  // A
    0b000010101010111,  // B
    0b001010111010111,  // C
    0b000000101010111,  // D
    0b000000000000101,  // E
    0b000010101110101,  // F
    0b000010101110111,  // G
    0b000000101010101,  // H
    0b000000000010101,  // I
    0b101110111011101,  // J
    0b000010111010111,  // K
    0b000010101011101,  // L
    0b000000101110111,  // M
    0b000000001010111,  // N
    0b001011101110111,  // O
    0b001010111011101,  // P
    0b101110101110111,  // Q
    0b000000101011101,  // R
    0b000000001010101,  // S
    0b000000000010111,  // T
    0b000000101110101,  // U
    0b000010111010101,  // V
    0b000010111011101,  // W
    0b001011101010111,  // X
    0b101110111010111,  // Y
    0b001010101110111   // Z
};

extern uint8_t MORSE_LED;    /* defined in code.cpp */
extern char *PREDEF_MSGS[];  /* defined in code.cpp */
extern bool is_time_expired; /* defined in task.cpp */

/** FUNCTION PROTOTYPES **/
void send_multiple_bits(uint8_t, uint8_t, uint8_t);
inline void send_bits(uint8_t, uint8_t);
inline void char2morse(char, morse_t *);

void do_sending(uint8_t msg_index) {
    morse_t encoded_char;
    char *msg_ch_ptr;

    SetRelAlarm(ALARMGeneralOneShot, BIT_TIMING_MS, BIT_TIMING_MS);
    for (msg_ch_ptr = PREDEF_MSGS[msg_index]; !is_time_expired && *msg_ch_ptr; msg_ch_ptr++) {
        
        if (*msg_ch_ptr == ' ') {
            SEND_INTERWORD_PAUSE(MORSE_LED);
            continue;
        }
        
        char2morse(*msg_ch_ptr, &encoded_char);

        do {
            send_bits(((uint8_t)encoded_char) & 0x01, MORSE_LED);
        } while (!is_time_expired && (encoded_char >>= 1) != 0x0001);

        ACTION_WVALID_FLAG(!is_time_expired, SEND_INTERCODEWORD_PAUSE(MORSE_LED));
    }

    ACTION_WVALID_FLAG(!is_time_expired, SEND_INTERWORD_PAUSE(MORSE_LED));
    CancelAlarm(ALARMGeneralOneShot);
}

void send_multiple_bits(uint8_t bits, uint8_t pin, uint8_t times) {
    while(times--) {
        send_bits(bits, pin);
    }
}

inline void send_bits(uint8_t bits, uint8_t pin) {
    do {
        digitalWrite(pin, bits & 0x01);

        WaitEvent(EVTGeneralOneShot);
        ClearEvent(EVTGeneralOneShot);
    } while (bits >>= 1);
}

inline void char2morse(char ch, morse_t *encoded) {
    *encoded = morse_encoding[(ch & 0x1f) - 1];
}