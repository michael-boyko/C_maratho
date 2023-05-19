#include <stdio.h>
#include <ctype.h>
#include <string.h>
#include <unistd.h>
#include "tests_list.h"

#define MAX_SPRINT_NUM 20
#define ERROR_MSG_MAX "ERROR: maximum number of sprint is 20\n"
#define ERROR_MSG_USAGE "ERROR: usage: ./run_tests [sprint number <= 20]\n"
#define ERROR_MSG_FOR_DEBUG "ERROR: something wrong!!!\n"

static int pars_commands(const char* command) {
    int ret = -1;

    if (command && isdigit(command[0])) {
        ret = 0;
        for (int i = 0; isdigit(command[i]); ++i) {
            ret = ret * 10 + command[i] - '0';
        }
        if (ret > MAX_SPRINT_NUM) {
            write(2, ERROR_MSG_MAX, strlen(ERROR_MSG_MAX));
            ret = -1;
        }
    }
    return ret;
}

static int run_whole_tests() {
    int ret = -1;

    for (int i = 0; mx_tests_list[i]; ++i) {
        ret = mx_tests_list[i]();
        if (ret == -1) {
            break;
        }
    }

    return ret;
}

static int run_specific_tests(int sprint_num) {
    int ret = -1;

    if (sprint_num < NUM_SPRINTS) {
        ret = mx_tests_list[sprint_num]();
    }

    return ret;
}

int main(int argc, char** argv) {
    int sprint_num = -1;
    int ret = 0;

    if (argc < 2) {
        ret = run_whole_tests();
    } else {
        sprint_num = pars_commands(argv[1]);
        if (sprint_num != -1) {
            ret = run_specific_tests(sprint_num);
        } else {
            write(2, ERROR_MSG_USAGE, strlen(ERROR_MSG_USAGE));
        }
    }
    if (ret != 0) {
        write(2, ERROR_MSG_FOR_DEBUG, strlen(ERROR_MSG_FOR_DEBUG));
    }

    return ret;
}