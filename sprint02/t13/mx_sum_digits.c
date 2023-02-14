int mx_sum_digits(int num) {
    int ret = 0;

    if (num < 0) {
        num *= -1;
    }

    if (num / 10 > 0) {
        ret += num % 10;
        ret += mx_sum_digits(num / 10);
    } else {
        ret = num;
    }

    return ret;
}
