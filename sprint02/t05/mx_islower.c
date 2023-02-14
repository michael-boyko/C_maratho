bool mx_islower(int c) {
    bool ret = false;

    if (c > 96 && c < 123) {
        ret = true;
    }

    return ret;
}
