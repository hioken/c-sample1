#include <stdio.h>
#include "math_tool.h"

int main(void) {
    printf("10 / 2 = %d\n", divide(10, 2));
    printf("10 / 0 = %d\n", divide(10, 0));
    return 0;
}