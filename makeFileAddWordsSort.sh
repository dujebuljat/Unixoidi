#!/bin/bash

echo "Napravi tekstualnu datoteku: "
read ime
touch $ime.txt
echo "Unesi pet rijeci u datoteku: "
for ((i=0; i<5; i++)); do
  echo "Unesi rijec: "
  read r
  echo $r >> $ime.txt
done

echo "-----------------------"
echo "Unesene rijeci: "
cat $ime.txt
echo "-----------------------"
echo "Sortirano: "
sort $ime.txt > sortirano.txt
cat sortirano.txt
