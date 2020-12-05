#include <stdio.h>
#include "unistd.h"
#include "fcntl.h"

#include "threads.h"
#include "global.h"
#include "fft.h"

void waitfor(double ms) {
    //Let's see if you can use nanosleep
    clock_t begin, end;
    clock_t a, b;
    double time_spent = 0.0;
    
    ms /= 1000;
    begin = clock();

    do {
        end = clock();
        time_spent = (double)(end - begin) / (CLOCKS_PER_SEC);
    } while (time_spent < ms);

}

void *_th_acquiring(void *fd_wr) {
    int buf;
    int fd, i;

    if ((fd = open(ACQUIRE_DEVICE, O_RDONLY)) < 0) {
        fprintf(stderr, "Unable to open %s\n", ACQUIRE_DEVICE);
        pthread_exit(&fd);
    }

    do {
        for (i = 0; i < MAX_DATA; i++) {
            waitfor(20);

            read(fd, &buf, sizeof buf);
            write(*(int *)fd_wr, &buf, sizeof buf);
        }
    } while(1);

    close(fd);
    pthread_exit(NULL);
}

void *_th_compute(void *fd_rd) {
    complex v[MAX_DATA], scratch[MAX_DATA];
    float abs[MAX_DATA];
    int minIdx, maxIdx;
    int i, m, buf;

    do {
        
        for (i = 0; i < MAX_DATA; i++) {
            read(*(int *)fd_rd, &buf, sizeof buf);
            v[i].Re = buf;
            v[i].Im = 0;
        }

        // fft
        fft(v, MAX_DATA, scratch);

        // power-spectrum density
        pds(v, MAX_DATA, abs);

        minIdx = (0.5*2048)/50;   // position in the PSD of the spectral line corresponding to 30 bpm
        maxIdx = 3*2048/50;       // position in the PSD of the spectral line corresponding to 180 bpm

        // Find the peak in the PSD from 30 bpm to 180 bpm
        for(i = m = minIdx; i < maxIdx; i++) {
            if (abs[i] > abs[m]) {
                m = i;
            }
        }

        // Print the heart beat in bpm
        printf( "\n\n\n%d bpm\n\n\n", (m)*60*50/2048 );
    } while(1);

    pthread_exit(NULL);
}
