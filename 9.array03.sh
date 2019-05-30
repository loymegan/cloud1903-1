#!/usr/bin/env bash

array=()
for index in `seq 0 8`
do
  array[$index]=$((index+1))
done
#array[0]=1
#array[1]=2
#array[2]=3
#array[3]=4

arraylen=${#array[*]}
for index in `seq 0 $((arraylen-1))`
do
  echo ${array[$index]}
done

