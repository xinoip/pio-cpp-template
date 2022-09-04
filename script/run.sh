#!/bin/bash
cd "$(dirname "$0")";
cd ..;

./build/example/example > out.txt;
code out.txt;