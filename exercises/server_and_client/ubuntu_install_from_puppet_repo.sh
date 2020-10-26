#!/bin/sh
codename=$(lsb_release -sc)
wget "https://apt.puppet.com/puppet-release-${codename}.deb" -P /tmp
sudo dpkg -i "/tmp/puppet-release-${codename}.deb"
sudo apt-get update 
sudo apt-get install pdk puppet-agent puppetserver
