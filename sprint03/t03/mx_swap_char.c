void mx_swap_char(char *s1, char *s2) {
    char tmp = '\0';

    if (s1 != NULL && s2 != NULL) {
        tmp = *s1;
	*s1 = *s2;
	*s2 = tmp;
    }
}
