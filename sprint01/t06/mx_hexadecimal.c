void mx_hexadecimal(void) {
    char* str = "0123456789ABCDEF\0";

    for (int i = 0; i < 16; ++i) {
        mx_printchar(str[i]);
        mx_printchar('\n');
    }
}
