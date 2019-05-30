#!/usr/bin/env bash

id mysql >/dev/null
if [ $? -eq 0 ];then
  echo "mysql user exist"
else
  groupadd mysql
  useradd -M -s /sbin/nologin -g mysql mysql
fi

tar xf mysql-5.7.26-bin.tar.xz -C /usr/local/
if [ $? -eq 0 ];then
  chown -R mysql:mysql /usr/local/mysqld/*
else
  echo "...."
  exit 1
fi

echo "export PATH=$PATH:/usr/local/mysqld/mysql/bin" >>/etc/profile
source /etc/profile

mv /etc/{my.cnf,my.cnf.bak}
cp ./default_my.cnf /etc/my.cnf

ln -s /usr/local/mysqld/mysql/support-files/mysql.server /usr/bin/mysqldctl
mysqldctl start
if [ $? -eq 0 ];then
  ln -s /usr/local/mysqld/tmp/mysql.sock /tmp/mysql.sock
  echo "mysql现在就可以使用了"
else
  echo "mysql启动失败, 请检查mysql的安装配置."
  exit 23
fi





