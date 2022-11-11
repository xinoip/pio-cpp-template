#!/bin/bash
cd `dirname $0`
cd ..;

. ./script/config.sh;

echo "[INFO] run.sh working directory: `pwd`";

cd $RUNDIR;
./pio_math_test;
./example;

echo "[INFO] all done!";
