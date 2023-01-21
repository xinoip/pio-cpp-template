add_executable(pio_math_test "src/t_main.cpp" "src/t_add.cpp")
set_target_properties(
  pio_math_test
  PROPERTIES OUTPUT_NAME PioMath_Test
             EXPORT_NAME PioMath_Test
             CXX_EXTENSIONS OFF)

target_compile_features(pio_math_test PRIVATE cxx_std_20)
target_include_directories(pio_math_test PRIVATE src)

target_link_libraries(pio_math_test PRIVATE doctest::doctest)
target_link_libraries(pio_math_test PRIVATE pio_math)

doctest_discover_tests(pio_math_test)
