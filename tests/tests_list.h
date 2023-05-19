#ifndef TESTS_LIST_H
#define TESTS_LIST_H

#define NUM_SPRINTS 2

int sprint00();
int sprint01();

typedef int (*sprint_test)(void);

sprint_test mx_tests_list[NUM_SPRINTS] = {
    sprint00,
    sprint01,
    //sprint02,
    //sprint03,
};

#endif //TESTS_LIST_H