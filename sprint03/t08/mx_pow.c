double mx_pow(double n, unsigned int pow) {
    double ret = n;
    double max_val = DBL_MAX / n;

    while (pow-- > 0) {
        if (ret <= max_val) {
            ret *= n;
            continue;
        }
        break;
    }
}
