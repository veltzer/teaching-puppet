For this training get every student a c5.xlarge machine with ubuntu 18.04
from aws with 8 Gig storage each.
The reason for the size of the machines is for them to install all puppet
software, run puppet server and solve docker exercises.

Add user data like this:
============userdata============
#!/bin/sh
apt-get -y update
apt-get -y dist-upgrade
apt-get -y install docker.io
usermod -aG docker ubuntu
reboot
================================
so the students will have docker installed and configred and the machine updated.
All the rest is in the exercises.

give each stupdent it's own ip.
give all of them the keypair you used to create the machines.
