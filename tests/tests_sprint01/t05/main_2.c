#include <stdio.h>

void printPrintableCharsReverse() {
    for (int i = 126; i >= 32; i--) {
        printf("%c\n", (char)i);
    }
}

int main() {
    printPrintableCharsReverse();
    return 0;
}