#!/usr/bin/env bash
#
# author: liuchao
# date: 2019/05/28

array=("php" "php-fpm" "php-mysql" "php-devel" "php-mbstring")
arrayLen=${#array[*]}

## get array len.
#for index in `seq 0 $((arrayLen-1))`
#do
#  echo "No.${index} element is: ${array[$index]}"
#done

## check software installed.
#for index in `seq 0 $((arrayLen-1))`
#do
#  rpm -qa | grep ${array[$index]} &>/dev/null
#  if [ $? -ne 0 ];then
#    yum -y install ${array[$index]}
#  else
#    echo "${array[$index]} is installed."
#  fi
#  sleep 1
#done

## add to array.
#array01=()
#for index in `seq 0 5`
#do
#  array01[index]=$((index+1))
#done
#
#for i in `seq 0 5`
#do
#  echo "${array01[$i]}"
#done






