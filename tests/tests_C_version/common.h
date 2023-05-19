#ifndef COMMON_H
#define COMMON_H

void test_error(const char* msg);
void test_success(const char* msg);
int run_program(const char* path, char* out, int out_size);

#endif //COMMON_H