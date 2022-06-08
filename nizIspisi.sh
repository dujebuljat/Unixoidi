#!/bin/bash

declare -a niz
niz=(vr1 vr2 vr3 vr4)
echo "ispis svih elemenata niza: "
echo ${niz[*]}
echo "ispis odabranog elementa: "
echo ${niz[2]}
echo "duljina niza: "
echo ${#niz[@]}
