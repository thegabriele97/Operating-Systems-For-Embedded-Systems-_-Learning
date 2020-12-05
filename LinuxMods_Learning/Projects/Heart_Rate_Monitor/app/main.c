#include <stdio.h>
#include <time.h>
#include "unistd.h"
#include "fcntl.h"

void waitfor(double ms) {
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

int main() {
    int fd, n, val, i;
    int buf[4102];
    
    //printf("a\n");
    /*for (int i = 0; i < 50; i++) {
        waitfor(20);
        //usleep(20000);
    }*/
    //printf("b\n");

    fd = open("/dev/virtppg", O_RDONLY);
    printf("Opened file with fd = %d\n", fd);

    printf("n bytes to read: ");
    scanf("%d", &val);
    
    n = read(fd, &buf, val);
    for (i = 0; i < (n >> 2); i++) {
        printf("%d ", buf[i]);
        if (i / 5 == 0) {
            printf("\n");
        }
    }

    printf("Printed %d\n", i);

    close(fd);
    return 0;
}