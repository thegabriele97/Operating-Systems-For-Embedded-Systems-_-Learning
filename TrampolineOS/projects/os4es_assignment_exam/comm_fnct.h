#ifndef COMMON_FNCT_H
#define COMMON_FNCT_H

enum morse_codes {
    NILL = 0x00,
    DOT  = 0x01,
    DASH = 0x07
};

typedef uint8_t morse_t;

void send_bits(uint8_t, uint8_t);
void char2morse(char, morse_t *);
void send_multiple_bits(uint8_t bits, uint8_t pin, uint8_t times);

#endif