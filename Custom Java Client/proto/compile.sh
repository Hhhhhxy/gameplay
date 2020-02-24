#!/bin/sh
mkdir -p ../src/Protobuf
protoc --java_out=../src/Protobuf *.proto
for f in ../src/Protobuf/*.java; do echo 'package Protobuf;\n' | cat - $f > temp && mv temp $f; done