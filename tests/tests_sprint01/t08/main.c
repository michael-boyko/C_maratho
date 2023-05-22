#include <assert.h>
#include <string.h>

#define LONG_STRING "jkd;faadshf ;ahf;ahpfgauh9hafd h;a asdf;a h;asfdfh;asdfh ;asfha;hff;alkfjdl asfjas;jfasdfj sdjf ;asfkjasfjsad klfjsad;ljfsafsadf jhasdlkgjhasdjfa;lfg als"


int main() {
    assert((strlen("")) == (mx_strlen("")));
    assert((strlen("1")) == (mx_strlen("1")));
    assert((strlen("22")) == (mx_strlen("22")));
    assert((strlen(LONG_STRING)) == (mx_strlen(LONG_STRING)));
    assert((strlen("\0")) == (mx_strlen("\0")));
    assert(0 == (mx_strlen(NULL)));
    return 0;
}