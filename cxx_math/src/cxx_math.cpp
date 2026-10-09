#include <pio_math/pio_math.hpp>
#include <cstdio>
#include <arithmetics/counter.hpp>

namespace Pio {

void libmain() {
    std::puts("hello from pio_math!");
    count(1, 5);
}

int add(int x, int y) {
    return x + y;
}

} // namespace Pio