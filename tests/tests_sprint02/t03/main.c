#include <assert.h>
#include <stdbool.h>

int main() {
    assert(mx_isdigit('a') == false);
    assert(mx_isdigit('\n') == false);
    assert(mx_isdigit(' ') == false);
    assert(mx_isdigit('Z') == false);
    assert(mx_isdigit('0') == true);
    assert(mx_isdigit('1') == true);
    assert(mx_isdigit('2') == true);
    assert(mx_isdigit('3') == true);
    assert(mx_isdigit('4') == true);
    assert(mx_isdigit('5') == true);
    assert(mx_isdigit('6') == true);
    assert(mx_isdigit('7') == true);
    assert(mx_isdigit('8') == true);
    assert(mx_isdigit('9') == true);
	return 0;
}
