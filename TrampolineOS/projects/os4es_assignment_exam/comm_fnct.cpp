#include "stdint.h"
#include "Arduino.h"
#include "tpl_os.h"
#include "comm_fnct.h"

/*
 * You shall read it from left to right. 
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

void char2morse(char ch, morse_t *encoded) {
    *encoded = morse_encoding[(ch & 0x1f) - 1];
}