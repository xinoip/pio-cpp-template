#include <arithmetics/counter.hpp>
#include <common/common.hpp>
#include <cstdio>

namespace Pio {

void count(int start, int end) {
    common_foo();
    for (int i = start; i < end; ++i) {
        printf("%d ", i);
    }
    printf("\n");
}

} // namespace Pio