#!/usr/bin/env bash
#
# author: liuchao
# email: bavduer@163.com
# date: 2019/05/27
# usage: 复习

read -p "" variable
case $variable in
  1)
    command01
    ;;
  2)
    command02
    ;;
  3)
    command03
    ;;
  *)
    echo "你个傻X"
    ;;
esac
