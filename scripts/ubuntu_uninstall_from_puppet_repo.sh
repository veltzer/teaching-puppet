#!/bin/sh
codename=$(lsb_release -sc)
dpkg --purge pdk puppetserver puppet-agent puppet-tools-release
