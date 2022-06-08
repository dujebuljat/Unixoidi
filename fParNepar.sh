#!/bin/bash

function provjera {
broj=$1
if [ $(($broj % 2)) -eq 0 ]; then
echo "Broj je paran!"
else
echo "Broj je neparan!"
fi
}

echo "Unesite broj kojeg zelite provjeriti: "
read a

provjera a
