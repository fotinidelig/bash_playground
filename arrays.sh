#!/bin/bash

# just some basic array manipulation stuff

myarray=("one" "two" "three" "four" "five")
echo "Number of items in array: ${#myarray[@]}"

for i in "${!myarray[@]}"; do
  echo "${myarray[$i]}"  
done
