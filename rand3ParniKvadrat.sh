#!/bin/bash

declare -a prvi_niz
declare -a niz_tri
declare -a niz_parni
declare -a niz_kvadrati

for ((i=0; i<10; i++)); do
  slucajni=$((RANDOM % 100 + 1))
  prvi_niz+=($slucajni)
done

for ((i=0; i<10; i++)); do
  broj=${prvi_niz[i]}
  if [ $((broj%3)) -eq 0 ]; then
    niz_tri+=($broj)

  elif [ $((broj%2)) -eq 0 ]; then
    niz_parni+=($broj)
  fi

kvadrat=$((broj*broj))
niz_kvadrati+=($kvadrat)

done

echo "Prvi niz: "
echo ${prvi_niz[*]}
echo "Brojevi djeljivi s 3: "
echo ${niz_tri[*]}
echo "Parni brojevi: "
echo ${niz_parni[*]}
echo "Kvadrati brojeva su: "
echo ${niz_kvadrati[*]}
