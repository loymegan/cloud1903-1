#!/usr/bin/env bash


# 配置仓库.
cat <<-EOF >>/etc/yum.repos.d/nginx.repo
[nginx-stable]
name=nginx stable repo
baseurl=http://nginx.org/packages/centos/\$releasever/\$basearch/
gpgcheck=1
enabled=1
gpgkey=https://nginx.org/keys/nginx_signing.key
EOF

# 缓存nginx安装仓库.
yum makecache fast

# 安装nginx服务.
if [ $? -eq 0 ];then
  yum -y install nginx
else
  exit 502
fi

# 添加新的内容到网站的首页文件中.
if [ -d /usr/share/nginx/html ];then
  echo "hello nginx" >/usr/share/nginx/html/index.html
else
  echo "请确认已经安装了nginx服务"
fi

# 启动nginx服务.
systemctl start nginx
systemctl enable nginx
