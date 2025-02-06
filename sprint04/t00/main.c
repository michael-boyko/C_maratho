#include <stddef.h>

int main() {
    int* arr_00 = NULL;
    int arr_01[1] = {0};
    int arr_02[5] = {0, 1, 2, 3, 4};
    int arr_03[10] = {9, 8, 7, 6, 5, 4, 3, 2, 1, 0};
    int arr_04[3] = {-1, 0, 1};
    int arr_05[2] = {-10883883, 13534534};

    mx_print_arr_int(arr_00, 0);
    mx_printchar('\n');
    mx_print_arr_int(arr_01, 1);
    mx_printchar('\n');
    mx_print_arr_int(arr_02, 5);
    mx_printchar('\n');
    mx_print_arr_int(arr_03, 10);
    mx_printchar('\n');
    mx_print_arr_int(arr_04, 3);
    mx_printchar('\n');
    mx_print_arr_int(arr_05, 2);

    return 0;
}
