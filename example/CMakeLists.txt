add_executable(example "src/main.cpp")
set_target_properties(
  example
  PROPERTIES OUTPUT_NAME Example
             EXPORT_NAME Example
             CXX_EXTENSIONS OFF)

target_compile_features(example PRIVATE cxx_std_20)
target_include_directories(example PRIVATE src)

target_link_libraries(example PRIVATE pio_math)
