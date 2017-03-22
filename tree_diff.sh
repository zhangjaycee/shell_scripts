#!/bin/bash

# 利用了tree命令和vimdiff命令，用于比较两个文件夹的文件组成的不同（仅限于文件名）

if [ $# -ne 2 ]
then
    echo usage: script_name [dir1] [dir2]
    exit 1
fi

for DIR_NAME in $@
do
    if [ ! -d $DIR_NAME ]
    then
        echo error: $DIR_NAME is not a directory!
        exit 1
    fi
done

TREE1=tmp_${1}_tree
tree $1 > $TREE1     
TREE2=tmp_${2}_tree
tree $2 > $TREE2     
vimdiff $TREE1 $TREE2
