#!/bin/bash/

# move first n_samples files from source to dir
# works with arbitrary high number of files in dir

source_dir=$1
destination_dir=$2
n_samples=$3

cd $source_did
ls | head -n $n_samples | xargs -I{} mv {} $destination_dir
