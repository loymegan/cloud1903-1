#!/usr/bin/env bash
#
# author: liuchao
# date: 2019/05/28


array_name=("php" "mysql" "nginx")
array_len=${#array_name[*]}
for i in `seq 0 $((array_len-1))`
do
  echo ${array_name[$i]}
done
