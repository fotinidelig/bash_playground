#!/bin/bash

# rename a list of .png files with index from 1 to N (number of files)
# to be used in datasets

folder=$1 # folder path relative to pwd
img_pronounce=$2 # images will be named [img_pronounce]_[idex]
curdir=$(pwd)
cd $folder
n=$(ls -1|wc -l) # number of files in $folder
mkdir -p temp

for i in $(seq $n)
do
  filename=$(ls -1|head -1);
  if [[ $filename == *.png ]]; then
    echo $filename;
    mv "$filename" temp/"$img_pronounce"_"$i".png;
  fi
done
mv temp/* .
rm -r temp
# shellcheck disable=SC2164
cd $curdir
