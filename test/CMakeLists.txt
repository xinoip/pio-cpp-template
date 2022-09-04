set(TEST_SRC
    "src/t_main.cpp"
    "src/t_add.cpp"
)

add_executable(pio_math_test
    ${TEST_SRC}
)

target_compile_features(pio_math_test PRIVATE cxx_std_20)
set_target_properties(
    pio_math_test PROPERTIES
    OUTPUT_NAME pio_math_test
    EXPORT_NAME exe
    CXX_EXTENSIONS OFF
)

target_link_libraries(pio_math_test PRIVATE doctest::doctest)
target_link_libraries(pio_math_test PRIVATE pio_math)

doctest_discover_tests(pio_math_test)