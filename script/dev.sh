#!/bin/bash
cd `dirname $0`
cd ..;

. ./script/config.sh;

echo "[INFO] dev.sh working directory: `pwd`";

sh ./script/build.sh || { echo "[ERROR] build failed!"; exit 1; };
sh ./script/run.sh || { echo "[ERROR] run failed!"; exit 1; };

echo "[INFO] all done!";
