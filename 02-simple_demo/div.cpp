#include "math.h"

// 实现除法
double mydiv(int a, int b) {
    if (b == 0) {
        return 0.0;
    }
    return a * 1.0 / b;
}