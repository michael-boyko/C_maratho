#include <unistd.h>

void mx_matrix_voice(void) {
    char* str = "\a\n\0";

    write(1, str, 2);
}
