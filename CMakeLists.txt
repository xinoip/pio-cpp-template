cmake_minimum_required(VERSION 3.24)

project(
  pio_template
  VERSION 0.1.0
  LANGUAGES C CXX)

#
# Options
#
option(ENABLE_SANITIZERS "Enable sanitizers in Debug builds" OFF)

#
# Sane Global Defaults
#
if(CMAKE_SOURCE_DIR STREQUAL CMAKE_BINARY_DIR)
  message(FATAL_ERROR "In-source builds are not supported.")
endif()
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_C_EXTENSIONS OFF)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
find_program(CLANG_TIDY_EXECUTABLE NAMES clang-tidy REQUIRED)
set(CMAKE_C_CLANG_TIDY "${CLANG_TIDY_EXECUTABLE}")
set(CMAKE_CXX_CLANG_TIDY "${CLANG_TIDY_EXECUTABLE}")
add_compile_options(-Wall -Wextra -Wpedantic -Wconversion -Wshadow -Wformat=2)
set(CMAKE_COMPILE_WARNING_AS_ERROR ON)
if(ENABLE_SANITIZERS)
  add_compile_options(
    "$<$<CONFIG:Debug>:-fsanitize=address,undefined;-fno-omit-frame-pointer;-fno-sanitize-recover=all>"
  )
  add_link_options("$<$<CONFIG:Debug>:-fsanitize=address,undefined>")
endif()

#
# Source Configuration
#
add_subdirectory(c_math)
add_subdirectory(c_math_example)
add_subdirectory(cxx_math)
add_subdirectory(cxx_math_example)

#
# Packaging
#
install(
  TARGETS c_math cxx_math c_math_example cxx_math_example
  RUNTIME DESTINATION bin
  LIBRARY DESTINATION lib
  ARCHIVE DESTINATION lib)
install(DIRECTORY c_math/include/ cxx_math/include/ DESTINATION include)
set(CPACK_GENERATOR TGZ)
include(CPack)
