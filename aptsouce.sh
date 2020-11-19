#!/bin/bash

# 清华
APTSERVER=mirrors.tuna.tsinghua.edu.cn
# 科大
# APTSERVER=mirrors.ustc.edu.cn

OSVER=`lsb_release -c | awk '{print $2}'`
sudo cat >/etc/apt/sources.list <<EOL0
deb http://${APTSERVER}/ubuntu-ports/ ${OSVER} main multiverse restricted universe
deb http://${APTSERVER}/ubuntu-ports/ ${OSVER}-backports main multiverse restricted universe
deb http://${APTSERVER}/ubuntu-ports/ ${OSVER}-proposed main multiverse restricted universe
deb http://${APTSERVER}/ubuntu-ports/ ${OSVER}-security main multiverse restricted universe
deb http://${APTSERVER}/ubuntu-ports/ ${OSVER}-updates main multiverse restricted universe
deb-src http://${APTSERVER}/ubuntu-ports/ ${OSVER} main multiverse restricted universe
deb-src http://${APTSERVER}/ubuntu-ports/ ${OSVER}-backports main multiverse restricted universe
deb-src http://${APTSERVER}/ubuntu-ports/ ${OSVER}-proposed main multiverse restricted universe
deb-src http://${APTSERVER}/ubuntu-ports/ ${OSVER}-security main multiverse restricted universe
deb-src http://${APTSERVER}/ubuntu-ports/ ${OSVER}-updates main multiverse restricted universe
EOL0

mkdir -p ~/.pip/
cat >~/.pip/pip.conf <<EOL
[global]
trusted-host =  mirrors.aliyun.com
index-url = http://mirrors.aliyun.com/pypi/simple
EOL


