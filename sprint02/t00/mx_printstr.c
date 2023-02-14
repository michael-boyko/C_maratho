void mx_printstr(const char *s) {
    int size = mx_strlen(s);

    if (size > 0) {
        write(1, s, size);
    }
}
