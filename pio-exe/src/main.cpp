#include <stdio.h>
#include "mymath.hpp"

int main(int argc, char *argv[]) {
    (void)argc;
    (void)argv;

    printf("Hello World!\n");

    int x = 40;
    int y = 2;

    printf("%d + %d = %d\n", x, y, Pio::add(x, y));
    printf("%d - %d = %d\n", x, y, Pio::sub(x, y));
    printf("%d * %d = %d\n", x, y, Pio::mlt(x, y));
    printf("%d / %d = %d\n", x, y, Pio::div(x, y));
}
