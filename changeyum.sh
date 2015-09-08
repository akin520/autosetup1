#!/bin/bash
#write by badb0y
cd /etc/yum.repos.d/
mv CentOS-Base.repo CentOS-Base.repo.bak
wget http://autosetup1.googlecode.com/files/CentOS-Base.repo
rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-5
yum install screen -y
