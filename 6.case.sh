#!/usr/bin/env bash



cat <<-EOF
	+=====================+
	|    System tools     |
	+=====================+
	|  1. 查看系统状态    |
	|  2. 查看当前磁盘状态|
	|  3. 查看cpu状态     |
	|  4. quit	      |
	+=====================+
EOF

read -p "请输入你的选择: " choose
case $choose in
1)
	top
	;;
2)
	df -Th
	;;
3)
	vmstat
	;;
4)
	exit
	;;
*)
	echo "你个笨蛋!"
	exit
esac



#if [ $choose -eq 1 ];then
#	top
#elif [ $choose -eq 2 ];then
#	df -Th
#elif [ $choose -eq 3 ];then
#	vmstat
#else
#	exit
#fi
