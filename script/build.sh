#!/bin/bash
cd `dirname $0`
cd ..;

. ./script/config.sh;

echo "[INFO] build.sh working directory: `pwd`";

cmake -S . -B build \
      -DCMAKE_EXPORT_COMPILE_COMMANDS=ON \
      -DCMAKE_BUILD_TYPE=Debug \
      -DBUILD_SHARED_LIBS=ON \
      || { echo "[ERROR] error occurred during cmake configuration, check the logs!"; exit 1; };

cmake --build build \
    || { echo "[ERROR] error occurred during cmake build, check the logs!"; exit 1; }

cp build/compile_commands.json . \
    || { echo "[ERROR] could not copy compile_commands.json, check the logs!"; exit 1; }

echo "[INFO] build done, now creating temporary run directory: $RUNDIR";

rm -r $RUNDIR > /dev/null 2>&1;
mkdir -p $RUNDIR \
    || { echo "[ERROR] could not create temporary run directory: $RUNDIR, check the logs!"; exit 1; }

cp build/example/example $RUNDIR;
cp build/pio_math/libpio_math.so $RUNDIR;
cp build/test/pio_math_test $RUNDIR;

echo "[INFO] all done!";
