#include <assert.h>
#include <stddef.h>
#include "string_tool.h"

int get_char_length(const char *str) {
    /* ポインタがNULLであってはならないという事前条件 */
    assert(str != NULL);
    
    int length = 0;
    while (str[length] != '\0') {
        length++;
    }
    return length;
}