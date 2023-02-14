bool mx_isalpha(int c) {
     bool ret = false;

     if (c > 64 && c < 91 || c > 96 && c < 123) {
         ret = true;
     }

     return ret;
}
