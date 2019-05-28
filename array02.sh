#!/usr/bin/env bash
#
# author: bavdu
# date: 2019/05/28

array=(1 "php" "php-fpm" "php-mysql" "php-devel" "php-mbstring")
arrayLen=${#array[*]}
for i in `seq 0 $((arrayLen-1))`
do
  echo "${array[$i]}"
done
