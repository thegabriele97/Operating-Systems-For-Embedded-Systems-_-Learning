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
    int fd, n;
    char ch[10];
    
    //printf("a\n");
    /*for (int i = 0; i < 50; i++) {
        waitfor(20);
        //usleep(20000);
    }*/
    //printf("b\n");

    fd = open("/dev/virtppg", O_RDONLY);
    printf("Opened file with fd = %d\n", fd);

    printf("Reading 3 bytes..\n");
    n = read(fd, &ch, 3);
    printf("Bytes read: %d\n", n);

    printf("Reading 1 bytes..\n");
    n = read(fd, &ch, 1);
    printf("Bytes read: %d\n", n);

    close(fd);
    return 0;
}