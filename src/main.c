#include <stdio.h>
#include <stddef.h>
#include "math_tool.h"
#include "string_tool.h"

int main(void) {
    printf("10 / 2 = %d\n", divide(10, 2));
    
    printf("Length: %d\n", get_char_length("hello"));
    printf("Length: %d\n", get_char_length(NULL));
    
    return 0;
}