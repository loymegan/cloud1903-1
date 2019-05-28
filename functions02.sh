#!/usr/bin/env bash
#
# author: liuchao
# date: 2019/05/28

Install_Nginx() {
cat <<-EOF >/etc/yum.repos.d/nginx.repo 
[nginx-stable]
name=nginx stable repo
baseurl=http://nginx.org/packages/centos/\$releasever/\$basearch/
gpgcheck=1
enabled=1
gpgkey=https://nginx.org/keys/nginx_signing.key
EOF

if [ -f /etc/yum.repos.d/nginx.repo ];then
  yum -y install nginx
  if [ $? -eq 0 ];then
    systemctl start nginx
    systemctl enable nginx
  else
    echo "nginx service is failed install."
  fi
else
  echo "nginx's yumrepo is not exists."
fi
}

Php_install() {
  phpgroup=("php" "php-fpm" "php-mysql" "php-gd" "php-mbstring" "php-mcrypt" "php-devel" "php-curl")
  phpgrouplen=${#phpgroup[*]}
  for index in `seq 0 $((phpgrouplen-1))`
  do
    rpm -qa | grep ${phpgroup[$index]} &>/dev/null
    if [ $? -eq 0 ];then
      echo "${phpgroup[$index]} installed."
    else
      yum -y install ${phpgroup[$index]}
    fi
  done
}

while :
do
cat <<-EOF
	+===================+
	|   Install tools   |
        +===================+
	|  1.install nginx  |
 	|  2.install php    |
	|  3.Quit	    |
	+===================+
EOF

read -p "please Input your choose: " choose
case $choose in
  1)
    Install_Nginx 
    ;;
  2)
    Php_install
    ;;
  3)
    exit
    ;;
  *)
    echo "Please choose (1, 2, 3) or getout!~"
esac
done
























