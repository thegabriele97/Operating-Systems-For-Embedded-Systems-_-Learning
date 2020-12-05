#ifndef _THREADS_H
#define _THREADS_H

#include "pthread.h"

void *_th_acquiring(void *);
void *_th_compute(void *);

#endif