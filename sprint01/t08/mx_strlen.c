#include <unistd.h>

int mx_strlen(const char *s) {
    int ret = 0;

    if (s != NULL) {
        while (s[ret] != '\0') {
            ret++;
        }
    }

    return ret;
}

