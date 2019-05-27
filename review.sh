#!/usr/bin/env bash
#
# author: liuchao
# email: bavduer@163.com
# date: 2019/05/24
# usage: review.

# Task01: 复习变量的赋值
var01=21  #此时就可以称var01变量为整型变量.
var02="hello" 
var03=21.34

read -p "请输入你想输入的字符: " var04

# Task02: 复习脚本的书写
# 脚本中的代码, 都是Linux的命令
# 从上到下, 从左到右


# Task03: 变量之间的运算
a=1
b=4
let c=$a/$b
echo $c

# Task04: 变量的交换
n1=23
n2=78

n3=$n1
n1=$n2
n2=$n3












