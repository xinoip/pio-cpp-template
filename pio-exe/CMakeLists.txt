set(pio-exe_SRC src/mymath.cpp src/mymath.hpp)
add_executable(pio-exe ${pio-exe_SRC} src/main.cpp)
target_compile_features(pio-exe PRIVATE cxx_std_20)
target_compile_options(pio-exe PRIVATE ${COMPILE_OPTIONS})

set(pio-exe_TEST_SRC test/main.cpp)
add_executable(pio-exe_TEST ${pio-exe_TEST_SRC})
target_compile_features(pio-exe_TEST PRIVATE cxx_std_20)
target_compile_options(pio-exe_TEST PRIVATE ${COMPILE_OPTIONS})
