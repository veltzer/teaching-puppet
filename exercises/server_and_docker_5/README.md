Connect server and docker 
=========================

We will create a agent on docker

* get the files `Dockerfile.agent5` and `build_agent5.sh` from this folder.

* build the docker image by running `build_agent5.sh`

* run your docker using `run_agent5.sh`

* you will need to set the name of your host and put autosign=true in /etc/puppet/puppet.conf master section.

* you will need to add "puppet" as a name to your host in /etc/hosts

* use the cleanup script in this folder if things go wrong with signatures.

At the end of the exercise you should see an agent connected to a master pulling a catalog every 30 seconds.
