#include <assert.h>
#include <stdbool.h>

int main() {
    assert(mx_is_odd(1) == true);
    assert(mx_is_odd(-1) == true);
    assert(mx_is_odd(3) == true);
    assert(mx_is_odd(12432342521) == true);
    assert(mx_is_odd(2) == false);
    assert(mx_is_odd(12) == false);
    assert(mx_is_odd(200) == false);
    assert(mx_is_odd(0) == false);
	return 0;
}
