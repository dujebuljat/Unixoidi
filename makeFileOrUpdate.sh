#!/bin/bash

echo "Unesite svoj odabir: "
echo "1 - kreiranje nove mape"
echo "2 - update sustava"
read odabir
dir=novi_dir
if [ $odabir -eq 1 ]; then
  if [ ! -e $dir ]; then
    mkdir novi_dir; cd novi_dir
    touch moja_prva_datoteka.txt
    echo "Kreiran direktorij $dir i u njemu moja_prva_datoteka.txt"
  else
    echo "Direktorij vec postoji!"
  fi
elif [ $odabir -eq 2 ]; then
  echo "Pokretanje update-a sustava!"
  apt update && apt upgrade -y
fi
