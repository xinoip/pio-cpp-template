#include <doctest/doctest.h>
#include <pio_math.hpp>

TEST_CASE("test add") {
    CHECK(Pio::add(40, 2) == 42);
}
