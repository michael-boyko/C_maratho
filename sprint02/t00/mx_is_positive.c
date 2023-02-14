void mx_is_positive(int i) {
    if (i == 0) {
        mx_printstr("zero\n");
    } else {
        mx_printstr(i > 0 ? "positiv\n" : "negative\n");
    }
}
