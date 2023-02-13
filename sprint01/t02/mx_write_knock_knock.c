#include <string.h>
#include <unistd.h>

void mx_write_knock_knock(void) {
    char* str = "Follow the white rabbit.\nKnock, knock, Neo.\n\0";
    int size = strlen(str);

    write(1, str, size);
}
