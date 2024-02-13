#!/bin/bash/

source_dir="dir"
destination_dir="ddir"
n_samples=10000

cd $source_did
ls | head -n $n_samples | xargs -I{} mv {} $destination_dir
