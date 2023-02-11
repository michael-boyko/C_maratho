#!/bin/bash
# This is script for testign Ucode Marathon C

#PATH="C_marathon"
TRASH="/dev/null"
WHITE='\033[1;37m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
ECHO='echo -e'
SET_COLOR_BACK="${ECHO} -n ${WHITE}"
LOG_FILE="erro_log.txt"

$ECHO "${BOLD}TESTS STARTING!"
echo "Sprint00 start ..."
#task00.0
(man man) >> mm0
if chmod 740 task00.sh 2> $TRASH && . task00.sh >> mm1 2> $TRASH  && diff mm0 mm1 > $LOG_FILE
then
	$ECHO "task00: is ${GREEN}OK!"
else
	$ECHO "task00: is ${RED}FAILED!"
fi
rm mm0 mm1 2> $TRASH
$SET_COLOR_BACK
#task01.0


