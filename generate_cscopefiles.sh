#!/bin/bash

SRC_PATH=`pwd`
find $SRC_PATH -name "*.c" -o -name "*.cc" -o -name "*.h" -o -name "*.cpp" -o -name "*.ic" > cscope.files
cscope -Rbq -i cscope.files

