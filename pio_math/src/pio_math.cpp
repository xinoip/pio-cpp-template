#include <pio_math/pio_math.hpp>
#include <spdlog/spdlog.h>

namespace Pio {

void libmain() {
    spdlog::info("hello from pio_math!\n");
}

int add(int x, int y) {
    return x + y;
}

} // namespace Pio