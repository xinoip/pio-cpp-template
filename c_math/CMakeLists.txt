add_library(c_math src/c_math.c)
target_compile_features(c_math PUBLIC c_std_17)
target_include_directories(c_math PUBLIC include)
