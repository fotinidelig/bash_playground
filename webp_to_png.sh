#!/bin/bash

# create png from webp files using ffmpeg

target_folder=$1
for file in *webp;
do
  name="$(basename $file .webp)"
  ffmpeg -i $file $name.png
  mv "$name.png" "../$target_folder"
done
