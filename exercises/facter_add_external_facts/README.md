Add external fact to facter
===========================

It seems that Facter doesn't know how many loop devices the current Linux kernel
supports. We can find that out from the `/sys` filesystem.
Lets add this fact to facter.
Lets also add a static YAML file that tells us the types of EC2 machines on AWS.

* Create a folder in your home directory called "~/.facter/facts.d"

* Create a file called `~/.facter/facts.d/loop_devices` with the following content:
	```shell
	#!/bin/sh
	loop_devices=$(ls -d /sys/block/loop? | wc -l)
	echo "loop_devices=${loop_devices}"
	```

* Make the file executable with:
	```shell
	$ chmod +x ~/.facter/facts.d/loop_devices
	```

* Now check that Facter knows about the new `loop_devices` fact:
	```shell
	$ facter loop_devices
	```

* Run facter with the `--debug` flag to see all that is does:
	```shell
	$ facter --debug loop_devices
	```
