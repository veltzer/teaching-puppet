#!/bin/sh
sudo systemctl stop puppet-master
sudo find /var/lib/puppet/ssl/ca/signed -name "*.pem" -delete
sudo systemctl start puppet-master
