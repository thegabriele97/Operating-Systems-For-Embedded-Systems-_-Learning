#ifndef MORSECOD_H_
#define MORSECOD_H_

#include "Arduino.h"

typedef enum {
    LINE = '-',
    DOT  = '.',
    PAUSE = ';'
} morse_t;

typedef struct {
    char character;
    morse_t symbols[3];
} morsemap_t;

morsemap_t char2morse(char to_code);

#endif