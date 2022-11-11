#!/bin/bash
cd `dirname $0`
cd ..;

. ./script/config.sh;

echo "[INFO] clean.sh working directory: `pwd`";

rm -r build $RUNDIR compile_commands.json