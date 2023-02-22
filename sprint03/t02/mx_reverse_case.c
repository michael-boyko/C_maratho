void mx_reverse_case(char *s) {
    if (s != NULL) {
        for (int i = 0; s[i] != '\0'; ++i) {
            if (mx_islower(s[i])) {
                s[i] = mx_toupper(s[i]);
		continue;
            }
            s[i] = mx_tolower(s[i]);
        }
    }
}
