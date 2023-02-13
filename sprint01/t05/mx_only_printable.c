void mx_only_printable(void) {
    for (int i = 256; i > 0; --i) {
        if (i > 31 && i < 127) {
            mx_printchar(i);
            mx_printchar('\n');
        }
    }
}
