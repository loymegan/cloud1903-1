#!/usr/bin/env bash
#
# author: bavdu
# email: bavduer@163.com
# date: 2019/05/30
# usage: install lnmp env.



# install nginx service.
Install_Nginx() {
  rpm -qa | grep nginx &>/dev/null
  if [ $? -eq 0 ];then
    yum -y remove nginx
    yum -y install nginx
  else
    yum -y install nginx
  fi
}

Config() {
  if [ $? -eq 0 ];then
    mv /etc/nginx/conf.d/{default.conf,default.conf.bak}
    cp ./templetes/nginx.conf /etc/nginx/conf.d/default.conf
  else
    echo "nginx install failed.please check your configure."
    exit 4
  fi
}

if [ -f /etc/yum.repos.d/nginx.repo ];then
  mv /etc/yum.repos.d/{nginx.repo,nginx.repo.bak}
  cp ./templetes/nginx.repo /etc/yum.repos.d/nginx.repo
  Install_Nginx
  Config
else
  cp ./templetes/nginx.repo /etc/yum.repos.d/nginx.repo
  Install_Nginx
  Config
fi

systemctl start nginx
systemctl enable nginx


# mysql install.
if [ -f /etc/yum.repos.d/mysql-community.repo ];then
  yum -y install mysql-community-server
else
  cp ./templetes/mysql57.repo /etc/yum.repos.d/mysql-community.repo
  yum -y install mysql-community-server
fi

systemctl start mysqld
systemctl enable mysqld

initpass=$(awk 'BEGIN{ FS=" " }NR==6{ print $NF }' /var/log/mysqld.log)
mysql -uroot -p"$initpass" --connect-expired-password -e "alter user root@localhost identified by '(BavDu..0530)';"


# php install.
yum -y install php php-mysql php-devel php-fpm php-gd php-mbstring php-mcrypt php-xml

systemctl start php-fpm
systemctl enable php-fpm

# test env
cp ./templetes/index.php /usr/share/nginx/html/index.php



















