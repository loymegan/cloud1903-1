#!/usr/bin/env bash
#
# author: bavdu
# email: bavduer@163.com
# date: 2019/05/30
# usage: auto line.


tar xf ./latest.tar.gz -C ./
if [ ! -d /www.qfcc.com.bak ];then
  mkdir /www.qfcc.com.bak
fi
mv /usr/share/nginx/html/* /www.qfcc.com.bak/
cp -rf ./wordpress/* /usr/share/nginx/html/
mysql -uroot -p"(BavDu..0530)" -e "create database wordpress;"

mv /usr/share/nginx/html/{wp-config-sample.php,wp-config.php}
sed -i 's/database_name_here/wordpress/' /usr/share/nginx/html/wp-config.php
sed -i 's/username_here/root/' /usr/share/nginx/html/wp-config.php
sed -i 's/password_here/(BavDu..0530)/' /usr/share/nginx/html/wp-config.php
