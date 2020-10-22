#include "morse_cod.h"
#include "Arduino.h"
#include "ctype.h"

void morse2struct(char *morse_enc, morsemap_t *map);

morsemap_t char2morse(char to_code) {
    morsemap_t map;
    int i;

    map.character = to_code;
    switch (toLowerCase(map.character)) {
    case 's':
        morse2struct("...", &map);
        break;
    
    case 'o':
        morse2struct("---", &map);
        break;

    case '\0':
        morse2struct(";;;", &map);
        break;
    }
}

void morse2struct(char *morse_enc, morsemap_t *map) {
    int i;

    for (i = 0; i < 3; i++) {
        map->symbols[i] = (morse_t)morse_enc[i];
    }
}