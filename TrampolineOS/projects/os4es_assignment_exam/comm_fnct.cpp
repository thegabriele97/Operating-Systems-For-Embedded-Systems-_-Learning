#include "stdint.h"
#include "Arduino.h"
#include "tpl_os.h"
#include "comm_fnct.h"

#define MORSEBUFF2_UINT32_PTR(buff_ptr) ((uint32_t *)buff_ptr)
#define MORSEENCODING2_UINT32(one, two, three, four) ((uint32_t)(((uint32_t)one << 24) | ((uint32_t)two << 16) | ((uint32_t)three << 8) | ((uint32_t)four << 0)))
#define MORSEENCODING2_UINT32_INV(one, two, three, four) ((uint32_t)(((uint32_t)four << 24) | ((uint32_t)three << 16) | ((uint32_t)two << 8) | ((uint32_t)one << 0)))

void send_multiple_bits(uint8_t bits, uint8_t pin, uint8_t times) {

    while(times--) {
        send_bits(bits, pin);
    }
}

void send_bits(uint8_t bits, uint8_t pin) {

    do {
        digitalWrite(pin, bits & 0x01);

        WaitEvent(EVTBitTiming);
        ClearEvent(EVTBitTiming);
    } while (bits >>= 1);
}

void char2morse(char ch, morse_t *buffer) {

    switch(ch) {
        case 'A':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DOT, DASH, NILL, NILL);
            break;

        case 'B':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DASH, DOT, DOT, DOT);
            break;

        case 'C':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DASH, DOT, DASH, DOT);
            break;

        case 'D':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DASH, DOT, DOT, NILL);
            break;

        case 'E':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DOT, NILL, NILL, NILL);
            break;
        
        case 'F':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DOT, DOT, DASH, DOT);
            break;

        case 'G':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DASH, DASH, DOT, NILL);
            break;

        case 'H':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DOT, DOT, DOT, DOT);
            break;

        case 'I':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DOT, DOT, NILL, NILL);
            break;

        case 'J':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DOT, DASH, DASH, DASH);
            break;

        case 'K':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DASH, DOT, DASH, NILL);
            break;

        case 'L':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DOT, DASH, DOT, DOT);
            break;

        case 'M':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DASH, DASH, NILL, NILL);
            break;

        case 'N':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DASH, DOT, NILL, NILL);
            break;
        
        case 'O':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DASH, DASH, DASH, NILL);
            break;

        case 'P':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DOT, DASH, DASH, DOT);
            break;

        case 'Q':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DASH, DASH, DOT, DASH);
            break;

        case 'R':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DOT, DASH, DOT, NILL);
            break;

        case 'S':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DOT, DOT, DOT, NILL);
            break;

        case 'T':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DASH, NILL, NILL, NILL);
            break;

        case 'U':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DOT, DOT, DASH, NILL);
            break;

        case 'V':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DOT, DOT, DOT, DASH);
            break;

        case 'W':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DOT, DASH, DASH, NILL);
            break;

        case 'X':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DASH, DOT, DOT, DASH);
            break;

        case 'Y':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DASH, DOT, DASH, DASH);
            break;

        case 'Z':
            *MORSEBUFF2_UINT32_PTR(buffer) = MORSEENCODING2_UINT32_INV(DASH, DASH, DOT, DOT);
            break;
    }

}