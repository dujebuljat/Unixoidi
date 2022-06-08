#!/bin/bash

function zbroji() {
a=$1
b=$2
return $((a+b))

}

echo "Unesi prvi broj: "
read prvi
echo "Unesi drugi broj: "
read drugi
zbroji $prvi $drugi
echo "Zbroj je: $?"
