#!/bin/bash

make clean
echo "**************************** Making the files ****************************"
make

for ((  i = 1 ;  i <= 5;  i++  ))
do
  echo "************************* Testing test file $i ************************"
  echo ""
  ./a.out < test_inputs/12CS10025_test$i.c > test_outputs/12CS10025_$i.s
  gcc test_outputs/12CS10025_$i.s myl.c -o $i.out
  ./$i.out
  echo "Press Enter to continue"
  read newline
  echo ""
done

echo "**************************** Testing done ********************************"


