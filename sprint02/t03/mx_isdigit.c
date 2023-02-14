bool mx_isdigit(int c) {
    bool ret = false;

    if (c > 47 && c < 58) {
        ret = true;
    }

    return ret;
}
