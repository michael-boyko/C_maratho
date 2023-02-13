void mx_only_printable(void) {
    for (int i = 0; i < 256; i++) {
        if (i > 64 && i < 91) {
            if (i % 2 == 0) {
                mx_printchar(i + 32);
                mx_printchar('\n');
	    } else {
                mx_printchar(i);
                mx_printchar('\n');
	    }
        }
    }
}
