#!/bin/bash

TRASH="/dev/null"
WHITE='\033[1;0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
ECHO='echo -e'
SPRINT_T="../sprint01/t"
TEST_SPRINT_T="tests_sprint01/t"
#PWD=$(pwd)
SET_COLOR_BACK="${ECHO} -n ${WHITE}${BOLD}"
#LOG_FILE="${PWD}/error_log.txt"

exit_failure ()
{
  $SET_COLOR_BACK
	$ECHO $1": is ${RED}FAILED!"
	$SET_COLOR_BACK
	echo "You can get more information about WHY TEST WAS FAILED in ${LOG_FILE}"
	exit 1
}

compiling_and_chacking ()
{
  local command="gcc -w ${TEST_SPRINT_T}$1/main.c ${SPRINT_T}$1/$2"
  if [ $# == 3 ]
  then
    command+=" ${SPRINT_T}$1/$3"
  fi
  if ! $command
  then
    exit_failure "task${1}"
  fi
}

check_by_diff () {
  echo -e $2 > "tmp0.txt"
  ./a.out > "tmp1.txt"

  if diff "tmp0.txt" "tmp1.txt"
  then
    $ECHO "task${1}: is ${GREEN}OK!"
  else
    rm tmp0.txt tmp1.txt
    exit_failure "task${1}"
  fi
  rm tmp0.txt tmp1.txt a.out
}

echo "=================="
echo "Sprint01 start ..."
echo "=================="

#tests t00
if [ -f "./t00/t00.sh" ]
then
  cd t00 > $TRASH
  if ./t00.sh "$1"
  then
    $ECHO "task00: is ${GREEN}OK!"
  else
    exit_failure "task00"
  fi
  cd $1 > $TRASH
else
  exit_failure "task00"
fi
$SET_COLOR_BACK

#tests t01
compiling_and_chacking "01" "mx_say_wake_up.c"
check_by_diff "01" "Wake up, NEO \\ (^_^) / ...\nThe Matrix has you ..."

#tests t02
compiling_and_chacking "02" "mx_write_knock_knock.c"
check_by_diff "02" "Follow the white rabbit.\nKnock, knock, Neo."

#tests t03
compiling_and_chacking "03" "mx_matrix_voice.c"

#tests t04
compiling_and_chacking "04" "mx_printchar.c"

#tests t05
compiling_and_chacking "05" "mx_only_printable.c" "mx_printchar.c"

#tests t06
compiling_and_chacking "06" "mx_hexadecimal.c" "mx_printchar.c"

#tests t07
compiling_and_chacking "07" "mx_print_alphabet.c" "mx_printchar.c"

#tests t08
compiling_and_chacking "08" "mx_strlen.c"

#tests t09
compiling_and_chacking "09" "mx_printstr.c" "mx_strlen.c"