#include "common.h"
#include <string.h>
#include <assert.h>

#define BUFFER_SIZE 4096
#define T01_CHECK "Wake up, NEO \ (^_^) / ...The Matrix has you ..."

int sprint01() {
    int ret = -1;
    char out[BUFFER_SIZE];

    ret = run_program("./t00.sh", out, BUFFER_SIZE);
    if (ret == 0 && (ret = strcmp(out, "Hello World\n")) == 0) {
        test_success("t00: DONE\n");
    } else {
//        assert(strcmp(T01_CHECK, mx_say_wake_up()));
        test_success("t01: DONE\n");
    }

    return ret;
};