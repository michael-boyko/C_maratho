#!/bin/bash

if ! gcc ../sprint01/t00/main.c
then
  exit 1
else
  ./a.out
  rm a.out
fi