int mx_mid(int a, int b, int c) {
    int ret = a;

    if (b > a && b < c) {
        ret = b;
    } else if (c > a && c < b) {
        ret = c;
    }

    return ret;
}
