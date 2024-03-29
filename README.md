# Pio C++ Template

My C++ project starter template.

## Features

- Dummy library named `pio_math`
- Example project using that library named `example`
- Dependency management with [vcpkg](https://github.com/microsoft/vcpkg) integrated into `cmake`
- `clang-tidy` analysis with `compile_commands.json` support
- `clang-format` support
- `doctest` unit testing integration to `cmake` with `ctest`
- Integrates well with VSCode using [cmake tools extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools)
- CMake presets support

## Build

Build it with with CMake:

```sh
cmake -S . -B build
cmake --build build
```

You may use CMake presets provided in `CMakePresets.json` (`build/dev` and `build/rel`):

```sh
cmake --preset dev # configure
cmake --build dev  # build
ctest dev          # run tests
# or
cmake --preset rel # configure
cmake --build rel  # build
ctest rel          # run tests
```

Since CMake Presets support requires _relatively_ newer CMake version, you may not have the appropriate CMake version.

If above is the case, use convenient development scripts:

```sh
./script/clean.sh   # clean build files and such
./script/config.sh  # shared config for all scripts
./script/build.sh   # build with cmake
./script/run.sh     # run the built output
./script/dev.sh     # build&run in one go
```

You can find the generated outputs at following locations:

```sh
./build/pio_math/PioMath_Lib
./build/test/PioMath_Test
./build/example/Example
./build/compile_commands.json
```
