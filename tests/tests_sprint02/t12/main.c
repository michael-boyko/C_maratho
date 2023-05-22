#include <assert.h>
#include <stdbool.h>

int main() {
    assert(mx_mid(-3, 9, 200) == 9);
    assert(mx_mid(-20000000, 0, 20000000) == 0);
    assert(mx_mid(-15000000, -5000000, 10000000) == -5000000);
    assert(mx_mid(0, 0, 0) == 0);
    assert(mx_mid(20000000, -20000000, 0) == 0);
    assert(mx_mid(10000000, 20000000, -15000000) == 10000000);
    assert(mx_mid(5000000, 0, -5000000) == 0);
    assert(mx_mid(-20000000, -10000000, -15000000) == -15000000);
    assert(mx_mid(20000000, 15000000, 10000000) == 15000000);
    assert(mx_mid(0, -20000000, 20000000) == 0);
    assert(mx_mid(-10000000, 5000000, 10000000) == 5000000);

    return 0;
}