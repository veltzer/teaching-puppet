Connect server and docker 
=========================

We will create a agent on docker

* get the files `Dockerfile.agent5` and `build_agent5.sh` from this folder.

* build the docker image by running `build_agent5.sh`

* run your docker using `run_agent5.sh`

* you will need to set the name of your host and put autosign=true in /etc/puppet/puppet.conf master section.

* use the cleanup script in this folder if things go wrong with signatures.
