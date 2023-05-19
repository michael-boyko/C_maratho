TARGET = run_tests

SRC = main.c common.c sprint00_tests.c sprint01_tests.c

INC = common.h tests_list.h

CC = gcc

CFLAGS = -Wall -Wextra

all: $(TARGET)

$(TARGET): $(SRC) $(INC)
	$(CC) $(CFLAGS) $(SRC) -o $(TARGET)

clean:
	rm -f $(TARGET)