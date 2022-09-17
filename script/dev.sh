#!/bin/bash

REBUILD=true

cd `dirname $0`
cd ..

if [ "$REBUILD" = true ]; then
    rm -r build
fi

cmake -D CMAKE_EXPORT_COMPILE_COMMANDS=ON -S . -B build
cmake --build build
cp build/compile_commands.json .

echo "\n\n\n"

rm -r tmp_run
mkdir tmp_run
cp build/pio-exe/pio-exe tmp_run
cp build/pio-exe/pio-exe_TEST tmp_run
cd tmp_run
tree .

./pio-exe_TEST
./pio-exe
