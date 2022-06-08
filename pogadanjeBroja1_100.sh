#!/bin/bash

proba=0
broj_pokusaja=0
echo "Pogodi zamisljeni broj izmedu 1 i 100"
#Generiraj zamisljeni broj koristeci RANDOM
broj=$(($RANDOM % 100 + 1))
#Igra
while (( $proba != $broj )); do
  echo "Pokusaj pogoditi broj: "
  read pokusaj
  broj_pokusaja=$(($broj_pokusaja + 1))
  if [ $pokusaj -gt $broj ]; then
    echo "Zamisljeni broj je manji od $pokusaj"
  elif [ $pokusaj -lt $broj ]; then
    echo "Zamisljeni broj je veci od $pokusaj"
  elif [ $pokusaj -eq $broj ]; then
    echo "POGODAK!"
    proba=$broj
  fi
done

echo "Pogodak iz $broj_pokusaja. pokusaja"
