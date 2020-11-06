#ifndef COMMON_FNCT_H
#define COMMON_FNCT_H

typedef uint16_t morse_t;

void send_bits(uint8_t, uint8_t);
void char2morse(char, morse_t *);
void send_multiple_bits(uint8_t bits, uint8_t pin, uint8_t times);

#endif