int mx_strcmp(const char *s1, const char *s2) {
    int ret = -1;

    if (s1 != NULL && s2 != NULL) {
        while ((*s1 != '\0' || *s2 != '\0') && *s1++ == *s2++);
	ret = *s1 - *s2;
    }

    return ret;
}
