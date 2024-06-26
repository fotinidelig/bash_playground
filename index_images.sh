#!/bin/bash

# rename a list of .png files with pronounce and index from 1 to N (number of files)
# to be used in datasets

folder=$1 # folder path relative to pwd
img_pronounce=$2 # images will be named [img_pronounce]_[idex]
curdir=$(pwd)
cd $folder
n=$(ls -1|grep -c .png) # number of .png files in $folder
mkdir -p temp
i=0
for filename in ./*.png;
do
  echo $filename;
  mv "$filename" temp/"$img_pronounce"_"$i".png;
  i=$((i+1));
done
mv temp/* .
rm -r temp

cd $curdir
