# Pio C++ Template

My C++ project starter template.

## Features

- Dummy library named `pio_math`
- Example project using that library named `example`
- Dependency management with [vcpkg](https://github.com/microsoft/vcpkg) integrated into `cmake`
- `clang-tidy` analysis with `compile_commands.json` support
- `clang-format` support
- `doctest` unit testing integration to `cmake` with `ctest`
- Can be used with VSCode using [cmake tools extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.cmake-tools)

## Build

Build it with with CMake:

```sh
cmake -S . -B build
cmake --build build
```

...or use convenient development scripts:

```sh
./script/clean.sh   # clean build files and such
./script/config.sh  # shared config for all scripts
./script/build.sh   # build with cmake
./script/run.sh     # run the built output
./script/dev.sh     # build&run in one go
```

You can find the generated outputs at following locations:

```sh
./build/pio_math/libpio_math.a
./build/test/pio_math_test
./build/example/example
./build/compile_commands.json
```
