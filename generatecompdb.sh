#!/bin/bash

BUILD_TYPE=Debug
BUILD_DIR=out_linux/$BUILD_TYPE

rm $BUILD_DIR/compile_commands.json
ninja -C $BUILD_DIR -t compdb cxx > $BUILD_DIR/compile_commands.json
compdb -p $BUILD_DIR list > $BUILD_DIR/_compile_commands.json
mv $BUILD_DIR/_compile_commands.json $BUILD_DIR/compile_commands.json
ln -sf $BUILD_DIR/compile_commands.json .
