#include <stdbool.h>

void mx_str_separate(const char *str, char delim) {
    bool newline = false;

    if (str != NULL) {
        for (int i = 0; str[i] != '\0'; ++i) {
            if (str[i] == delim) {
                newline = true;
                continue;
	    }
            if (newline == true) {
                newline = false;
                mx_printchar('\n');
            }
            mx_printchar(str[i]);
	}
        mx_printchar('\n');
    }
}
