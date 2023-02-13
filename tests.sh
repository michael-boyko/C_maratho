#!/bin/bash
# This is script for testign Ucode Marathon C

TRASH="/dev/null"
WHITE='\033[1;37m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
ECHO='echo -e'
PWD=$(pwd)
SET_COLOR_BACK="${ECHO} -n ${WHITE}"
LOG_FILE="${PWD}/error_log.txt"

exit_failure ()
{
	$ECHO $1": is ${RED}FAILED!"
	$SET_COLOR_BACK
	echo "You can get more information aboot WHY TEST WAS FAILED in ${LOG_FILE}"
	exit 1
}

$ECHO "${BOLD}TESTS STARTING!"
echo "Sprint00 start ..."
cd sprint00 2> $LOG_FILE || exit_failure "sprint00"

################### task00.0 ###################

cd t00 2> $LOG_FILE || exit_failure "t00"
(man man) >> tmp0

if chmod 740 man.sh 2> $LOG_FILE && . man.sh >> tmp1 2> $TRASH  && diff tmp0 tmp1 > $LOG_FILE
then
	$ECHO "task00: is ${GREEN}OK!"
else
	rm tmp0 tmp1 2> $TRASH
	exit_failure "task00"
fi

rm tmp0 tmp1 2> $TRASH
$SET_COLOR_BACK
cd - > $TRASH

################### task01.0 ###################

cd t01 2> $LOG_FILE || exit_failure "t01"
echo "git add" >> tmp0
echo "git commit" >> tmp0
echo "git push" >> tmp0

if diff tmp0 push_me.txt > $LOG_FILE
then
	$ECHO "task01: is ${GREEN}OK!"
else
	rm tmp0 2> $TRASH
	exit_failure "task01"
fi

rm tmp0 2> $TRASH
$SET_COLOR_BACK
cd - > $TRASH

################### task02.0 ###################

cd t02 2> $LOG_FILE || exit_failure "t02"

ls set_me_on_file.sh > $LOG_FILE || exit_failure "task02"
touch fire
chmod 400 fire
ls -laT
rm fire

if chmod 740 set_me_on_file.sh 2> $LOG_FILE && . set_me_on_file.sh > tmp1 2> $LOG_FILE && diff tmp0 tmp1 > $LOG_FILE
then
	$ECHO "task02: is ${GREEN}OK!"
else
	rm tmp0 tmp1 2> $TRASH
	exit_failure "task02"
fi

rm tmp0 tmp1 2> $TRASH
$SET_COLOR_BACK
cd - > $TRASH

################### task03.0 ###################

cd t03 2> $LOG_FILE || exit_failure "t03"
echo Follow the white rabbit. > tmp0

if chmod 740 wake_up.sh 2> $LOG_FILE && . wake_up.sh 2> $LOG_FILE &&
	cat -e instructions.txt > tmp1 && diff tmp0 tmp1 > $LOG_FILE
then
	$ECHO "task03: is ${GREEN}OK!"
else
	rm tmp0 tmp1 2> $TRASH
	exit_failure "task03"
fi

rm tmp0 tmp1 2> $TRASH
$SET_COLOR_BACK
cd - > $TRASH

################### task04.0 ###################
