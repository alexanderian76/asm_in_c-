#include <stdio.h>
#include <string.h>
#include "mult.h"
#include <stdlib.h>

int main()
{

    char snum[12];

    // Convert 123 to string [buf]

    int m = mult(5);
    snprintf(snum, 10 + sizeof(m), "My mult: %d\n", m);
    char *s = "My mult: ";
    // strcat(s, snum);
    print("a\n", 2);
    printf("Mult: %d \n", m);
    print(snum, sizeof(snum));
    print("qwe\n", 4);
    print("asd\n", 4);
    int arr[] = {0, 0, 0, 1, 1};
    printf("Binary to int: %ld \n", binary_array_to_number(arr, sizeof(arr) / sizeof(int)));
    return 0;
}
