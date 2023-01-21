# cmake stuff
cmake_minimum_required(VERSION 3.16)
set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake" ${CMAKE_MODULE_PATH})

# cmake scripts from ./cmake
include(VcpkgIntegration) # sets toolchain file for vcpkg
include(InsourceGuard) # prevents insource build
include(Config) # extra miscellaneous config for cmake
include(CompilerOptions) # provides SANE_COMPILER_OPTIONS
include(DoctestIntegration) # taken from doctest repo

# setup project
project(
  "pio_math"
  VERSION 0.1.0
  DESCRIPTION "a project"
  HOMEPAGE_URL "xinoip.github.io"
  LANGUAGES CXX)

include(TargetOSSetup) # setup OS-specific things, needs to be done after
                       # project setup

# add compile_commdans.json support, needs to be done after project setup
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# add ctest support, needs to be done after project setup
include(CTest)

# find packages

find_package(spdlog CONFIG REQUIRED)
find_package(doctest REQUIRED)

# add project modules

add_subdirectory(pio_math)
add_subdirectory(example)
add_subdirectory(test)
