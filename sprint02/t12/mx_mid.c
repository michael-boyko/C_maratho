int mx_mid(int a, int b, int c) {
    int ret = a;

    if (b > a && b < c || b > c && b < a) {
        ret = b;
    } else if (c > a && c < b || c < a && c > b) {
        ret = c;
    }

    return ret;
}
