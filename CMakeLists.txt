cmake_minimum_required(VERSION 3.16)
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})

include(InsourceGuard)
include(Config)
include(CompilerOptions)

project(
  pio-exe
  VERSION 0.1.0
  DESCRIPTION "placeholder description"
  HOMEPAGE_URL xinoip.github.io
  LANGUAGES CXX)

add_subdirectory(pio-exe)
