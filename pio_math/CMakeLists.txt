add_library(pio_math "include/pio_math/pio_math.hpp" "src/pio_math.cpp")
set_target_properties(
  pio_math
  PROPERTIES OUTPUT_NAME PioMath_Lib
             EXPORT_NAME PioMath_Lib
             CXX_EXTENSIONS OFF)

target_compile_features(pio_math PRIVATE cxx_std_20)
target_compile_options(pio_math PRIVATE ${SANE_COMPILER_WARNINGS})
target_include_directories(pio_math PUBLIC include)
target_include_directories(pio_math PRIVATE src)

target_link_libraries(pio_math PRIVATE spdlog::spdlog)
