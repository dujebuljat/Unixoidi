#!/bin/bash

echo "Unesi rijec: "
read s
len=${#s}
for (( i=$len; i>=0; i--)); do
  rerijec=$rerijec${s:$i:1}
done

echo "Unesena rijec je: $s"
echo "Obrnuta rijec je: $rerijec"
