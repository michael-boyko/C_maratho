bool mx_isspace(char c) {
    bool ret = false;

    if (c == ' ' || c == '\n' || c == '\t' ||
        c == '\v' || c == '\f' || c == '\r') {
        ret = true;
    }

    return ret;
}
