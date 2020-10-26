#!/bin/sh
apt-get -y update
apt-get -y dist-upgrade
apt-get -y install docker.io
usermod -aG docker ubuntu
reboot
