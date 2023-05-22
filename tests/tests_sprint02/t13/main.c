#include <assert.h>
#include <stdbool.h>

int main() {
    assert(mx_sum_digits(3) == 3);
    assert(mx_sum_digits(333) == 9);
    assert(mx_sum_digits(-3) == 3);
    assert(mx_sum_digits(321) == 6);
    assert(mx_sum_digits(39) == 12);
    assert(mx_sum_digits(999) == 27);
    assert(mx_sum_digits(577281) == 30);
    assert(mx_sum_digits(-987654321) == 45);
    assert(mx_sum_digits(70707) == 21);
    assert(mx_sum_digits(200000) == 2);

	return 0;
}
