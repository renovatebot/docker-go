#!/bin/bash

find ./tests -maxdepth 1 -type f -name '*.sh' -print0 | while read -d $'\0' file
do
  echo "Runnning test: ${file##*/}"
  bash $file
  [ "$?" = "0" ] || exit 1
done
