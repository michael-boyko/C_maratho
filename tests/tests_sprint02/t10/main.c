#include <assert.h>
#include <stdbool.h>

int main() {
    assert(mx_multiple_number(-3, 9) == true);
    assert(mx_multiple_number(0, 0) == true);
    assert(mx_multiple_number(0, 9) == false);
    assert(mx_multiple_number(3, 0) == false);
    assert(mx_multiple_number(1, 1) == true);
    assert(mx_multiple_number(5, 25) == true);
    assert(mx_multiple_number(3, 9) == true);
    assert(mx_multiple_number(9, 3) == false);
    assert(mx_multiple_number(1000000, 999999) == false);
    assert(mx_multiple_number(121, 11) == false);
    assert(mx_multiple_number(11, 121) == true);

	return 0;
}
