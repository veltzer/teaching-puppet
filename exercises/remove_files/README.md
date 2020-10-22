Remove files
============

* create a file `/etc/remove_file_exercise` as root like this:
	```shell
	$ sudo touch /etc/remove_file_exercise
	```

* Create the following `remove_file_exercise.pp` file:
	```puppet
	tidy { 'remove_file_exercise':
	  path => "/etc/remove_file_exercise"
	}
	```

* Apply the resource and see the file disappear.
	```shell
	$ sudo puppet apply remove_file_exercise.pp
	```
