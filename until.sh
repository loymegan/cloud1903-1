#!/usr/bin/env bash


n=0
until ((n>100))
do
  if [ $((n%2)) -eq 0 ];then
    echo $n
  fi
  let n++
done
