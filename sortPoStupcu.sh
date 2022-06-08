#!/bin/bash

rm table.txt

touch table.txt
echo "Unosi elemente tablice: "
echo "Student1    150    java" >> table.txt
echo "Student2    200    Python" >> table.txt
echo "Student3    180    php" >> table.txt
cat table.txt

echo "------------------------------------------------------"
echo "Odaberi stupac po kojem zelis sortirati tablicu: "
read stupac
sort -k $stupac table.txt

