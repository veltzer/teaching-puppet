#!/bin/sh
codename=$(lsb_release -sc)
wget "https://apt.puppet.com/puppet-tools-release-${codename}.deb" -P /tmp
sudo dpkg -i "/tmp/puppet-tools-release-${codename}.deb"
sudo apt-get update 
sudo apt-get install pdk
