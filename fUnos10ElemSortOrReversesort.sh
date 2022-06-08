#!/bin/bash

echo "Unesi 10 elemenata: "
declare -a niz
rm elementi.txt
for ((i=0; i<10; i++)); do
  j=$((i+1))
  echo "Unesi $j. element: "
  read element
  niz+=($element)
done

for ((i=0; i<10; i++)); do
  echo ${niz[i]} >> elementi.txt
done

function normalno(){
sort elementi.txt
}

function obrnuto(){
sort -r elementi.txt
}

echo "Kako zelite sortirati elemente: (1 za normalno, 2 za obrnuto)"
read sortiranje
if [ $((sortiranje)) -eq 1 ]; then
  normalno
elif [ $((sortiranje)) -eq 2 ]; then
  obrnuto
fi
