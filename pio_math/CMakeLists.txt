add_library(pio_math "include/pio_math.hpp" "src/pio_math.cpp")

target_compile_features(pio_math PRIVATE cxx_std_20)
target_compile_options(pio_math PRIVATE ${SANE_COMPILER_WARNINGS})
set_target_properties(
  pio_math
  PROPERTIES OUTPUT_NAME pio_math
             EXPORT_NAME lib
             CXX_EXTENSIONS OFF)

target_include_directories(pio_math PUBLIC "include")

target_link_libraries(pio_math PRIVATE spdlog::spdlog)
