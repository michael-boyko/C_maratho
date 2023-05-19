#include <string.h>
#include <unistd.h>
#include <stdlib.h>
#include <sys/wait.h>

void test_error(const char* msg) {
    unsigned int len = strlen(msg);

    write(2, msg, len);
}

void test_success(const char* msg) {
    unsigned int len = strlen(msg);

    write(1, msg, len);
}

int run_program(const char* path, char* out, int out_size) {
    int ret = -1;
    pid_t pid = -1;
    int pipe_fd[2] = {0, 0};

    if (pipe(pipe_fd) == -1) {
        test_error("ERROR: can not create pipe\n");
        return -1;
    }

    pid = fork();

    if (pid == -1) {
        test_error("ERROR: can not create new process\n");
    } else if (pid == 0) {
        if (dup2(pipe_fd[1], STDOUT_FILENO) == -1) {
            test_error("ERROR: can not redirect output\n");
        } else {
            ret = system(path);
        }
        close(pipe_fd[1]);

        exit(ret);
    } else {
        close(pipe_fd[1]);
        wait(&ret);
        if (out && ret == 0) {
            read(pipe_fd[0], out, out_size);
        }
        close(pipe_fd[0]);
    }

    return ret;
}