int mx_tolower(int c) {
    int ret = c;

    if (c > 64 && c < 91) {
        ret = c + 32;
    }

    return ret;
}
