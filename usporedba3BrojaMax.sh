#!/bin/bash

echo "Unesi prvi broj: "
read a
echo "Unesi drugi broj: "
read b
echo "Unesi treci broj: "
read c

if [ $a -ge $b ] && [ $a -ge $c ]; then
  echo "$a je najveci broj!"
elif [ $b -ge $a ] && [ $b -ge $c ]; then
  echo "$b je najveci broj!"
else
  echo "$c je najveci broj!"
fi
