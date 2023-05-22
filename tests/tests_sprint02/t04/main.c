#include <assert.h>
#include <stdbool.h>

int main() {
    assert(mx_isspace('\n') == true);
    assert(mx_isspace('\t') == true);
    assert(mx_isspace('\f') == true);
    assert(mx_isspace('\r') == true);
    assert(mx_isspace('\v') == true);
    assert(mx_isspace(' ') == true);
    assert(mx_isspace('+') == false);
    assert(mx_isspace('2') == false);
    assert(mx_isspace('a') == false);
    assert(mx_isspace('B') == false);
	return 0;
}
