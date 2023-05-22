#include <assert.h>
#include <stdbool.h>

int main() {
    for (int c = 0; c <= 127; c++) {
        assert(mx_toupper(c) == toupper(c));
    }
    assert(mx_toupper(' ') == ' ');

	return 0;
}
