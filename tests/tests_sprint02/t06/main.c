#include <assert.h>
#include <stdbool.h>

int main() {
    for (int c = 'A'; c <= 'Z'; c++) {
        assert(mx_isupper(c) == true);
    }
    assert(mx_isupper('a') == false);
    assert(mx_isupper('9') == false);

	return 0;
}
