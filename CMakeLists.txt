cmake_minimum_required(VERSION 3.16)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})
set(CMAKE_CXX_CLANG_TIDY "clang-tidy")

include(VcpkgIntegration)

# == project ==

project(
  "pio_math"
  VERSION 0.1.0
  DESCRIPTION "a project"
  HOMEPAGE_URL "xinoip.github.io"
  LANGUAGES CXX
)

# == modules ==

include(InsourceGuard)
include(CompilerOptions)
include(CTest)
include(DoctestIntegration)

# == packages ==

find_package(doctest REQUIRED)

# == project modules ==

add_subdirectory(pio_math)
add_subdirectory(example)
add_subdirectory(test)