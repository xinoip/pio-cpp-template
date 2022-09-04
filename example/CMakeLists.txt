set(EXAMPLE_SRC
    "src/main.cpp"
)

add_executable(
    example
    ${EXAMPLE_SRC}
)

target_compile_features(example PRIVATE cxx_std_20)
set_target_properties(
    example PROPERTIES
    OUTPUT_NAME example
    EXPORT_NAME exe
    CXX_EXTENSIONS OFF
)

target_link_libraries(example PRIVATE pio_math)