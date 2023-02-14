#include <stdbool.h>

bool mx_isupper(int c) {
    bool ret = false;

    if (c > 64 && c < 91) {
        ret = true;
    }

    return ret;
}
