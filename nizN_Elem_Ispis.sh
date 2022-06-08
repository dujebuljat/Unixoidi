#!/bin/bash

echo "Unesi broj elemenata niza: "
read n
declare -a niz
for (( i=0; i<$n; i++ )); do
  echo "Unesi $i. element niza: "
  read element
  niz+=($element)
done
echo ${niz[@]}
