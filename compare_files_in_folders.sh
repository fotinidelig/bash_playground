#!/bin/bash

for file in images/*.jpg; do
    rawfile=$(basename "$file" .jpg)
    if [ ! -f "labels/$rawfile.txt" ]; then
        rm "$file"
        echo "removed file $file"
    fi
done
