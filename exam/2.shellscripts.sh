#!/usr/bin/env bash
#

sum=0
for i in `seq 1 100`
do
  let sum=$sum+$i
  echo $sum
done
