#!/bin/bash

for i in *; do
  if [ -d "$i" ]; then
    continue
  fi

  if [ `grep -c '' $i` -gt 10 ]; then
    echo `wc -l $i`
  fi
done
