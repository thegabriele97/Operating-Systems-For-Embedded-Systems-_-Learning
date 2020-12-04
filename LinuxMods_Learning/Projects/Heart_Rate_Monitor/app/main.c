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
    int fd;
    char ch;
    
    //printf("a\n");
    for (int i = 0; i < 50; i++) {
        waitfor(20);
        //usleep(20000);
    }
    //printf("b\n");

    /*fd = open("/dev/devtest", O_RDONLY);
    printf("Opened file with fd = %d\n", fd);

    read(fd, &ch, 0x1);
    printf("Read: %c\n", ch);

    close(fd);*/
    return 0;
}