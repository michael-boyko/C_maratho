#!/bin/bash

cp "$1/../sprint01/t00/main.c" .

if ! gcc main.c
then
  exit 1
else
  ./a.out > tmp0
  echo "Hello World" > tmp1
  if ! diff tmp0 tmp1
  then
    rm a.out tmp0 tmp1 main.c
    exit 1
  fi
  rm a.out tmp0 tmp1
fi

rm main.c

exit 0