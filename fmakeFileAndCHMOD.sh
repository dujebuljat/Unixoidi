#!/bin/bash

echo "Unesi ime datoteke: "
read ime
echo "Unesi ekstenziju: "
read ekst

function provjera(){
FILE=$1
ekstenzija=$2
if [[ ! -e "${FILE}.${ekstenzija}" ]]; then
  echo "Creating ${FILE} file"
  touch ${FILE}.${ekstenzija}
  return 2
else
  echo "Datoteka vec postoji!"
  return 3
fi
}

function prava(){
echo "Vasa datoteka ima sljedeca prava: "
ls -l $1
echo "Zelite li mijenjati prava?(Unesite DA za odgovor)"
read odgovor
if [[ " $odgovor" -eq "DA" ]]; then
  echo "Mijenjamo prava za datoteku $1"
  echo "Unesi prava u binarnom obliku: "
  read prava
  chmod $prava $1
  echo "Nova prava su: "
  ls -l $1
fi
}

provjera $ime $ekst
prava $ime.$ekst
