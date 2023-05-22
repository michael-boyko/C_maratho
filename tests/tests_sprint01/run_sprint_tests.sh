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

#to do: this is not implemented part but necessary
#LOG_FILE="${PWD}/error_log.txt"

exit_failure ()
{
  $SET_COLOR_BACK
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
compiling_and_checking "01" "mx_say_wake_up.c"
check_by_diff "01" "Wake up, NEO \\ (^_^) / ...\nThe Matrix has you ..."
$SET_COLOR_BACK

#tests t02
compiling_and_checking "02" "mx_write_knock_knock.c"
check_by_diff "02" "Follow the white rabbit.\nKnock, knock, Neo."
$SET_COLOR_BACK

#tests t03
compiling_and_checking "03" "mx_matrix_voice.c"
check_by_diff "03" "\a"
$SET_COLOR_BACK

#tests t04
compiling_and_checking "04" "mx_printchar.c"
check_by_diff "04" "WZa"
$SET_COLOR_BACK

#tests t05
compiling_and_checking "05" "mx_only_printable.c" "mx_printchar.c"
./a.out > "tmp1.txt"
rm a.out
gcc "tests_sprint01/t05/main_2.c"
./a.out > "tmp2.txt"
if diff "tmp1.txt" "tmp2.txt"
then
  $ECHO "task05: is ${GREEN}OK!"
else
  rm tmp1.txt tmp2.txt a.out
  exit_failure "task05"
fi
rm tmp1.txt tmp2.txt a.out
$SET_COLOR_BACK

#tests t06
compiling_and_checking "06" "mx_hexadecimal.c" "mx_printchar.c"
check_by_diff "06" "0\n1\n2\n3\n4\n5\n6\n7\n8\n9\nA\nB\nC\nD\nE\nF"
$SET_COLOR_BACK

#tests t07
compiling_and_checking "07" "mx_print_alphabet.c" "mx_printchar.c"
check_by_diff "07" "A\nb\nC\nd\nE\nf\nG\nh\nI\nj\nK\nl\nM\nn\nO\np\nQ\nr\nS\nt\nU\nv\nW\nx\nY\nz"
$SET_COLOR_BACK

#tests t08
compiling_and_checking "08" "mx_strlen.c"
check_by_run "08"
$SET_COLOR_BACK

#tests t09
compiling_and_checking "09" "mx_printstr.c" "mx_strlen.c"
check_by_diff "09" "jkd;faadshf ;ahf;ahpfgauh9hafd h;a asdf;a h;asfdfh;asdfh ;asfha;hff;alkfjdl asfjas;jfasdfj sdjf ;asfkjasfjsad klfjsad;ljfsafsadf jhasdlkgjhasdjfa;lfg als"
