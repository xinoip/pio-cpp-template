add_library(cxx_math src/cxx_math.cpp src/arithmetics/counter.cpp
                     src/common/common.cpp)
target_compile_features(cxx_math PUBLIC cxx_std_17)
target_include_directories(
  cxx_math
  PUBLIC include
  PRIVATE src)
