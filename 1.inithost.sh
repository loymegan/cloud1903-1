#!/usr/bin/env bash
#
# author: liuchao
# email: bavduer@163.com
# date: 2019/05/23
# usage: 初始化系统.

# Task01: 配置系统的yum仓库,配置aliyun.
curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo
curl -o /etc/yum.repos.d/epel.repo http://mirrors.aliyun.com/repo/epel-7.repo

rm -rf /var/run/yum.pid
yum clean all
yum makecache fast


# Task02: 安装系统中必要的软件及工具.
yum -y install wget vim net-tools psmisc ntpdate
yum -y groupinstall "Development Tools"


# Task03: 同步系统时间为互联网时间.
ntpdate -b ntp1.aliyun.com


# Task04: 关闭防火墙和SELinux.
systemctl stop firewalld
systemctl disable firewalld
setenforce 0








