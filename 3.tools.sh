#!/usr/bin/env bash
#


echo "
+----------------------+
|      tools           |
+----------------------+
|   1. 打印 helloworld |
|   2. 打印 helloKitty |
|   3. 打印 三围       |
+----------------------+
"

read -p "请输入你的选择: " choose
case $choose in
  1)
	echo "hello world"
	;;
  2)
	echo "hello kitty"
	;;
  3)
	read -p "你的三围是: " sanwei
	echo $sanwei
	;;
  *)
	echo "你个没棍儿的猴子"
	exit
esac
