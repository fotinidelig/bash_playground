#!/bin/bash

myarray=("one" "two" "three" "four" "five")

for i in "${!myarray[@]}"; do
  echo "${myarray[$i]}"  
done
