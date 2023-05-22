#include <assert.h>
#include <stdbool.h>

int main() {
    for (char c = 'a'; c <= 'z'; c++) {
        assert(mx_islower(c) == true);
    }
    assert(mx_islower(' ') == false);
    assert(mx_islower('B') == false);
    assert(mx_islower('R') == false);
    assert(mx_islower('A') == false);
    assert(mx_islower('\n') == false);
    assert(mx_islower('0') == false);

	return 0;
}
