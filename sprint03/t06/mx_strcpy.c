char *mx_strcpy(char *dst, const char *src) {
    char* ret = NULL;

    if (dst != NULL && src != NULL) {
        while (*src != '\0') {
            *dst++ = *src++;
	}
    }

    return ret;
}
