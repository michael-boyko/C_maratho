#!/bin/bash

TRASH="/dev/null"
WHITE='\033[1;0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
ECHO='echo -e'
#PWD=$(pwd)
SET_COLOR_BACK="${ECHO} -n ${WHITE}${BOLD}"
#LOG_FILE="${PWD}/error_log.txt"

exit_failure ()
{
	$ECHO $1": is ${RED}FAILED!"
	$SET_COLOR_BACK
	echo "You can get more information about WHY TEST WAS FAILED in ${LOG_FILE}"
	exit 1
}

echo "=================="
echo "Sprint02 start ..."
echo "=================="

#tests t00
if [ -f "./t00/t00.sh" ]
then

else
  exit_failure "task00"
fi

#tests t01
if [ -f "./t00/mx_say_wake_up.c"]
then

else
  exit_failure "task00"
fi

#tests t02
if [ -f "./t00/mx_say_wake_up.c"]
then

else
  exit_failure "task00"
fi

#tests t03
if [ -f "./t00/mx_say_wake_up.c"]
then

else
  exit_failure "task00"
fi

#tests t04
if [ -f "./t00/mx_say_wake_up.c"]
then

else
  exit_failure "task00"
fi

#tests t05
if [ -f "./t00/mx_say_wake_up.c"]
then

else
  exit_failure "task00"
fi

#tests t06
if [ -f "./t00/mx_say_wake_up.c"]
then

else
  exit_failure "task00"
fi

#tests t07
if [ -f "./t00/mx_say_wake_up.c"]
then

else
  exit_failure "task00"
fi

#tests t08
if [ -f "./t00/mx_say_wake_up.c"]
then

else
  exit_failure "task00"
fi

#tests t09
if [ -f "./t00/mx_say_wake_up.c"]
then

else
  exit_failure "task00"
fi

#tests t10
if [ -f "./t00/t00.sh" ]
then

else
  exit_failure "task00"
fi

#tests t11
if [ -f "./t00/t00.sh" ]
then

else
  exit_failure "task00"
fi

#tests t12
if [ -f "./t00/t00.sh" ]
then

else
  exit_failure "task00"
fi

#tests t13
if [ -f "./t00/t00.sh" ]
then

else
  exit_failure "task00"
fi

#tests t14
if [ -f "./t00/t00.sh" ]
then

else
  exit_failure "task00"
fi