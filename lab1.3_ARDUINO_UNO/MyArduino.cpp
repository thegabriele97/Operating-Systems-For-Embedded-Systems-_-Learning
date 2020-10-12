#include "MyArduino.h"

/* PORT D */
iopin_reg_t *_DDRD  =  (iopin_reg_t *)_DDRD_ABS_ADDR;
iopin_reg_t *_PORTD =  (iopin_reg_t *)_PORTD_ABS_ADDR;
iopin_reg_t *_PIND  =  (iopin_reg_t *)_PIND_ABS_ADDR;

/* PORT C */
iopin_reg_t *_DDRC  =  (iopin_reg_t *)_DDRC_ABS_ADDR;
iopin_reg_t *_PORTC =  (iopin_reg_t *)_PORTC_ABS_ADDR;
iopin_reg_t *_PINC  =  (iopin_reg_t *)_PINC_ABS_ADDR;

/* PORT B */
iopin_reg_t *_DDRB  =  (iopin_reg_t *)_DDRB_ABS_ADDR;
iopin_reg_t *_PORTB =  (iopin_reg_t *)_PORTB_ABS_ADDR;
iopin_reg_t *_PINB  =  (iopin_reg_t *)_PINB_ABS_ADDR;
