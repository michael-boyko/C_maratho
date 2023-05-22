#!/bin/bash

TRASH="/dev/null"
WHITE='\033[1;0m'
RED='\033[0;31m'
GREEN='\033[0;32m'
BOLD='\033[1m'
ECHO='echo -e'
SPRINT_T="../sprint02/t"
TEST_SPRINT_T="tests_sprint02/t"
#PWD=$(pwd)
SET_COLOR_BACK="${ECHO} -n ${WHITE}${BOLD}"

#to do: this is not implemented part but necessary
#LOG_FILE="${PWD}/error_log.txt"

exit_failure ()
{
	$ECHO $1": is ${RED}FAILED!"
	$SET_COLOR_BACK
	echo "You can get more information about WHY TEST WAS FAILED in ${LOG_FILE}"
	exit 1
}

compiling_and_checking ()
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

check_by_run () {
  if ./a.out
  then
    $ECHO "task${1}: is ${GREEN}OK!"
  else
    rm a.out
    exit_failure "task${1}"
  fi
  rm a.out
}

for_t00_hard_coded () {
  local command="gcc -w ${TEST_SPRINT_T}00/main.c ${SPRINT_T}00/mx_is_positive.c ${SPRINT_T}00/mx_printstr.c ${SPRINT_T}00/mx_strlen.c"
  if ! $command
  then
    exit_failure "task${1}"
  fi
}

echo "=================="
echo "Sprint02 start ..."
echo "=================="

#tests t00
cd ../.

for_t00_hard_coded
check_by_diff "00" "positive\nnegative\nzero"
$SET_COLOR_BACK

#tests t01
compiling_and_checking "01" "mx_is_odd.c"
check_by_run "01"
$SET_COLOR_BACK

#tests t02
compiling_and_checking "02" "mx_isalpha.c"
check_by_run "02"
$SET_COLOR_BACK

#tests t03
compiling_and_checking "03" "mx_isdigit.c"
check_by_run "03"
$SET_COLOR_BACK

#tests t04
compiling_and_checking "04" "mx_isspace.c"
check_by_run "04"
$SET_COLOR_BACK

#tests t05
compiling_and_checking "05" "mx_islower.c"
check_by_run "05"
$SET_COLOR_BACK

#tests t06
compiling_and_checking "06" "mx_isupper.c"
check_by_run "06"
$SET_COLOR_BACK

#tests t07
compiling_and_checking "07" "mx_tolower.c"
check_by_run "07"
$SET_COLOR_BACK

#tests t08
compiling_and_checking "08" "mx_toupper.c"
check_by_run "08"
$SET_COLOR_BACK

#tests t09
compiling_and_checking "09" "mx_isos_triangle.c" "mx_printchar.c"
check_by_diff "09" "+\n++\n+++\n++++\n+++++"
$SET_COLOR_BACK

#tests t10
compiling_and_checking "10" "mx_multiple_number.c"
check_by_run "10"
$SET_COLOR_BACK

#tests t11
compiling_and_checking "11" "mx_max.c"
check_by_run "11"
$SET_COLOR_BACK

#tests t12
compiling_and_checking "12" "mx_mid.c"
check_by_run "12"
$SET_COLOR_BACK

#tests t13
compiling_and_checking "13" "mx_sum_digits.c"
check_by_run "13"
$SET_COLOR_BACK

#tests t14
compiling_and_checking "14" "mx_printint.c" "mx_printchar.c"
check_by_diff "14" "2147483647"
$SET_COLOR_BACK