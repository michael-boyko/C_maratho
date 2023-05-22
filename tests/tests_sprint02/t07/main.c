#include <assert.h>
#include <stdbool.h>

int main() {
    for (int c = 0; c <= 127; c++) {
        assert(mx_tolower(c) == tolower(c));
    }
    assert(mx_tolower('\n') == '\n');
	return 0;
}
