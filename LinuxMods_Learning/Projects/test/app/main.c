#include <stdio.h>
#include "unistd.h"
#include "fcntl.h"

int main() {
    int fd;
    char ch;
    
    fd = open("/dev/devtest", O_RDONLY);
    printf("Opened file with fd = %d\n", fd);

    read(fd, &ch, 0x1);
    printf("Read: %c\n", ch);

    close(fd);
    return 0;
}