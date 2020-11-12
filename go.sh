#!/bin/bash
yum install gcc make -y
cd /tmp
wget http://mirrors.ustc.edu.cn/gnu/libc/glibc-2.18.tar.gz
tar -zxvf glibc-2.18.tar.gz
cd  glibc-2.18
mkdir build
cd build
../configure --prefix=/usr
make -j4
sudo make install
