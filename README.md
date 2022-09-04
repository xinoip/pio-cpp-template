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

Setup [vcpkg](https://github.com/microsoft/vcpkg), `cmake`, `clang-tidy`, `clang-format`.

```sh
cmake -S . -B build
cmake --build build
```

You can find the generated outputs at following locations:

```sh
./build/pio_math/libpio_math.a
./build/test/pio_math_test
./build/example/example
./compile_commands.json
```
