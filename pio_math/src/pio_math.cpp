#include <pio_math/pio_math.hpp>
#include <spdlog/spdlog.h>
#include <arithmetics/counter.hpp>

namespace Pio {

void libmain() {
    spdlog::info("hello from pio_math!\n");
    count(1, 5);
}

int add(int x, int y) {
    return x + y;
}

} // namespace Pio