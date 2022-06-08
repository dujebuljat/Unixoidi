#!/bin/bash

echo "Unesi broj elemenata niza: "
read n
declare -a niz
max=0
for ((i=0; i<$n; i++)); do
  j=$(($i+1))
  echo "Unesi $j. element niza: "
  read element
  niz+=( $element )
done

function najduza() {
rijec=$1
len=${#rijec}
return $len
}

for ((i=0; i<$n; i++)); do
  najduza ${niz[i]}
  len=$?
  if [ $len -gt $max ]; then
    max=$len
    najdulja_rijec=${niz[i]}
  fi
done

echo "Najdulja rijec je $najdulja_rijec, ima $max znakova!!!"
