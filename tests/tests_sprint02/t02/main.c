#include <assert.h>
#include <stdbool.h>

int main() {
    assert(mx_isalpha('a') == true);
    assert(mx_isalpha('S') == true);
    assert(mx_isalpha('t') == true);
    assert(mx_isalpha('Z') == true);
    assert(mx_isalpha('1') == false);
    assert(mx_isalpha('\n') == false);
    assert(mx_isalpha(' ') == false);
    assert(mx_isalpha('&') == false);
	return 0;
}
