void mx_printint(int n) {
    if (n < 0) {
        n *= -1;
        mx_printchar('-');
    }

    if (n / 10 > 0) {
        mx_sum_digits(n / 10);
        mx_printchar(n % 10 + 48);
    } else {
        mx_printchar(n + 48);
    }
}
