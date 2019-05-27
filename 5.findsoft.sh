#!/usr/bin/env bash


rpm -qa | grep lftp
if [ $? == 0 ];then
	echo "lftp已经被安装了"
elif [ $? == 0 ];then
	echo "lftp确实被安装了"
else
	echo "lftp并没有被安装, 现在开始进行安装......"
	yum -y install lftp
fi


var01=5
var02=6
var03=3
# 等于 -eq
# 小于 -lt
# 大于 -gt


if [ $var01 -lt $var02 ];then
  echo "$var01 小于 $var02"
  if [ $var01 -gt $var03 ];then
    echo "$var01 大于 $var03"
  fi
fi
