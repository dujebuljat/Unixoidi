#!/bin/bash

declare -a prvi_niz
for (( i=0; i<10; i++)); do
  slucajni=$((RANDOM % 100 + 1))
  prvi_niz+=($slucajni)
done
echo "Pocetni niz; "
echo ${prvi_niz[*]}

declare -a niz_par
declare -a niz_nepar

for (( i=0; i<10; i++ )); do
  broj=${prvi_niz[i]}
  if [ $((broj%2)) -eq 0 ]; then
    niz_par+=($broj)
  else
    niz_nepar+=($broj)
  fi
done

echo "Parni: "
echo ${niz_par[*]}
echo "Neparni: "
echo ${niz_nepar[*]}
