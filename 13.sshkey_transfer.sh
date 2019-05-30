#!/usr/bin/env bash
#
# author: bavdu
# email: bavduer@163.com
# date: 2019/05/30
# usage: transfer ssh key.

Createkey() {
expect <<-EOF
spawn ssh-keygen
expect ":" { send "\r" }
expect ":" { send "\r" }
expect ":" { send "\r" }
expect eof
EOF
}

Transferkey() {
passwd="1"
expect <<-EOF
spawn ssh-copy-id root@192.168.161.3
expect "*yes/no*" { send "yes\r" }
expect "*password*" { send "$passwd\r" }
EOF
}


if [ -f /usr/bin/expect ];then
  if [ ! -f $HOME/.ssh/id_rsa ];then
    Createkey
    Transferkey 
  else
    Transferkey
  fi
else
  yum -y install expect
  if [ ! -f $HOME/.ssh/id_rsa ];then
    Createkey
    Transferkey
  else
    Transferkey
  fi
fi
