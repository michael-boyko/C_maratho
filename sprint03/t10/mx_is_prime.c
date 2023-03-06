#include <stdbool.h>
#include <stdio.h>

static int mx_sqrt(int num) {
    int sqrt = num;

    while (sqrt * sqrt > num) {
        sqrt = (sqrt + num / sqrt) / 2;
    }

    return sqrt;
}

bool mx_is_prime(int num) {
    bool ret = true;
    int max = mx_sqrt(num);

    for (int i = 2; i <= max; ++i) {
        if (num % i == 0) {
            ret = false;
        }
    }
    //printf("max = %d\n", max);

    return ret;
}
