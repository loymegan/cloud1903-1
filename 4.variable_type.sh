#!/usr/bin/env bash
#

# 整型
var01=15
echo "我今年 $var01 岁"

# 浮点型
var02=15.6
echo "我今年 $var02 岁"

# 字符串类型
var03="hello xiaoniu"
echo $var03

var04="I'm jiaozi"
var05='i"m jiaozi'
echo $var04 $var05


# 算式应用.
a=12
b=13
let sum=$a+$b
echo $sum

# 变量的交换
num01=78
num02=12
echo $num01 $num02

num03=$num01
num01=$num02
num02=$num03
echo $num01 $num02

