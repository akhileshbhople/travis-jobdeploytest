#!/bin/bash

##Create source directory with sample content
mkdir -p /build/src/test_rsync
touch /build/src/test_rsync/test1 /build/src/test_rsync/test2 /build/src/test_rsync/test3 /build/src/test_rsync/.git /build/src/test_rsync/_docker_workspace
echo "Content of src directory:"
ls -la /build/src/test_rsync

##Create an empty destination directory
mkdir -p /build/dest/build/final_output
echo "Content of dest directory before rsync"
ls -la /build/dest/build/final_output

rsync -a --exclude .git --exclude _docker_workspace /build/src/test_rsync/ /build/dest/build/final_output/

echo "Content of dest directory after rsync"
ls -la /build/dest/build/final_output
