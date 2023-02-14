#include <stdbool.h>

bool mx_multiple_number(int n, int mult) {
    bool ret = false;

    if (n * n == mult) {
        ret = true;
    }

    return ret;
}
