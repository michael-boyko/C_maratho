#! /bin/bash

ls -AX1sh $1 | tail -n+2 | awk '{print $2 " " $1}' | sort
