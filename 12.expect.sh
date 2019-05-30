#!/usr/bin/env bash
#
# author: bavdu
# email: bavduer@163.com
# date: 2019/05/30
# usage: study expect.


## 
passwd="1"

expect <<-EOF
spawn ssh root@192.168.161.3
expect "*yes/no*" { send "yes\r" }
expect "*password*" { send "$passwd\r" }
expect eof
EOF
