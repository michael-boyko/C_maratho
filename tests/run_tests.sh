#!/bin/bash

TRASH="/dev/null"
WHITE='\033[1;37m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
ECHO='echo -e'
MX_PWD=$(pwd)
SET_COLOR_BACK="${ECHO} -n ${WHITE}"
LOG_FILE="${MX_PWD}/error_log.txt"
MAX_SPRINTS=3

exit_failure ()
{
	$ECHO $1": is ${RED}FAILED!"
	$SET_COLOR_BACK
	echo "You can get more information about WHY TEST WAS FAILED in ${LOG_FILE}"
	exit 1
}

if [[ $1 == "all" || $1 == "-a" ]]
then
  for dir in $(find . -type d)
  do
    if [ -f "$dir/run_sprint_tests.sh" ]
    then
      cd "$dir" > $TRASH
      . ./run_sprint_tests.sh $MX_PWD
      cd $MX_PWD > $TRASH
    fi
  done
fi

if [[ $1 =~ ^[0-9]+$ && $1 -gt -1 && $1 -lt MAX_SPRINTS ]]
then
  dir="tests_sprint0$1"
  if [ -f "$dir/run_sprint_tests.sh" ]
  then
    cd "$dir" > $TRASH
    . ./run_sprint_tests.sh $MX_PWD
    cd $MX_PWD > $TRASH
  fi
fi