int mx_toupper(int c) {
    int ret = c;

    if (c > 96 && c < 123) {
        ret = c - 32;
    }

    return ret;
}
