#include <stdio.h>
#include <mymath.hpp>

int main(int argc, char *argv[]) {
    (void)argc;
    (void)argv;

    printf("Run example...\n");

    if (Pio::add(40, 2) == 42) {
        printf("pass\n");
    } else {
        printf("fail\n");
    }
}
