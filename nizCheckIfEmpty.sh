#!/bin/bash

echo "Unesi broj elemenata niza: "
read n
declare -a niz
len=${#niz[*]}
if [ $len -eq 0 ]; then
  echo "Niz je prazan."
else
  echo "Niz nije prazan."
fi
