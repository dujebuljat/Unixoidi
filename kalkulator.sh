#!/bin/bash

#Odaberi izbor:
echo 1. Addition
echo 2. Substraction
echo 3. Multiplication
echo 4. Division
echo 5. Exit
echo "Molim odaberite jedan od ponudenih izbora unosom tog broja:"
read odabir
echo "Unesi prvi broj"
read broj1
echo "Unesi drugi broj"
read broj2

if [ $odabir -eq 1 ]; then
  echo ------------------------------------------------------------
  echo "Suma brojeva $broj1 i $broj2 iznosi: $((broj1+broj2))"
  echo ------------------------------------------------------------
elif [ $odabir -eq 2 ]; then
  echo ------------------------------------------------------------
  echo "Razlika brojeva $broj1 i $broj2 iznosi: $((broj1-broj2))"
  echo ------------------------------------------------------------
elif [ $odabir -eq 3 ]; then
  echo ------------------------------------------------------------
  echo "Umnozak brojeva $broj1 i $broj2 iznosi: $((broj1*broj2))"
  echo ------------------------------------------------------------
elif [ $odabir -eq 4 ]; then
  echo ------------------------------------------------------------
  echo "Kolicnik brojeva $broj1 i $broj2 iznosi: $((broj1/broj2))"
  echo ------------------------------------------------------------
fi
