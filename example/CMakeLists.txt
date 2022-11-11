add_executable(example "src/main.cpp")

target_compile_features(example PRIVATE cxx_std_20)
set_target_properties(
  example
  PROPERTIES OUTPUT_NAME example
             EXPORT_NAME exe
             CXX_EXTENSIONS OFF)

target_link_libraries(example PRIVATE pio_math)
