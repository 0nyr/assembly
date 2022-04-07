#include <stdarg.h>
#include <stdio.h>

int variadicSum(int count, ...) {
    va_list args; // variable argument list
    va_start(args, count);

    int sum = 0;
    for(int i = 0; i < count; i++) {
        sum += va_arg(args, int);
    }

    va_end(args);
    return sum;
}

int variadicSum2(int count, int lastRequiredArg, ...) {
    va_list args;
    va_start(args, lastRequiredArg);

    int sum = lastRequiredArg;
    for (int i = 0; i < count; i++) {
        sum += va_arg(args, int);
    }

    va_end(args);
    return sum;
}


#define MIN_ELEMENT 1
#define MAX_ELEMENT 1000000

int variadicMin(int count, ...) {
    va_list values;
    va_start(values, count);

    int min = MAX_ELEMENT, test;  
    for(int i = 0; i < count; i++) {
        test = va_arg(values, int);
        if(min > test) {
            min = test;
        }  
    }

    va_end(values);
    return min;
}

int variadicMax(int count, ...) {
    va_list values;
    va_start(values, count);

    int max = MIN_ELEMENT, test;
    for(int i = 0; i < count; i++) {
        test = va_arg(values, int);
        if(max < test) {
            max = test;
        }  
    }

    va_end(values);
    return max;
}

int main() {
    int sum, min, max;

    sum = variadicSum(
        20, // count
        1, 2, 3, 4, 5, 
        6, 7, 8, 9, 10, 
        11, 12, 13, 14, 15, 
        16, 17, 18, 19, 20
    );
    printf("sum: %d\n", sum);

    sum = variadicSum2(
        20, // count
        0, // lastRequiredArg
        1, 2, 3, 4, 5, 
        6, 7, 8, 9, 10, 
        11, 12, 13, 14, 15, 
        16, 17, 18, 19, 20
    );
    printf("sum: %d\n", sum);

    min = variadicMin(
        20, // count
        3, 9, 1, 2, 5,
        8, 2, 12, 7, 4,
        10, 6, 11, 3, 14,
        8, 1, 15, 9, 5
    );
    printf("min: %d\n", min);

    max = variadicMax(
        20, // count
        3, 9, 1, 2, 5,
        8, 2, 12, 7, 4,
        10, 6, 11, 3, 14,
        8, 1, 15, 9, 5
    );
    printf("max: %d\n", max);

    return 0;
}