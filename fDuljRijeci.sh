#!/bin/bash

function duljina() {
echo "Unesena rijec je: $1"
s=$1
len=${#s}
return $len

}

echo "Unesi rijec ciju duljinu zelis provjeriti: "
read rijec

duljina $rijec
echo "Njena duljina je: $?"
