#include <assert.h>
#include "math_tool.h"

int divide(int numerator, int denominator) {
    assert(denominator != 0);
    return numerator / denominator;
}