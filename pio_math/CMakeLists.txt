set(PIO_MATH_SRC
    "src/pio_math.cpp"
)

add_library(
  pio_math
  ${PIO_MATH_SRC}
)

target_compile_features(pio_math PRIVATE cxx_std_20)
target_compile_options(pio_math PUBLIC ${COMPILE_OPTIONS})
set_target_properties(
    pio_math PROPERTIES
    OUTPUT_NAME pio_math
    EXPORT_NAME lib
    CXX_EXTENSIONS OFF
)

target_include_directories(pio_math PUBLIC "include")