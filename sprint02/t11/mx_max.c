int mx_max(int a, int b, int c) {
    int ret = a;

    if (a < b) {
        ret = b < c ? c : b;
    } else if (a < c) {
        ret = c;
    }

    return ret;
}
