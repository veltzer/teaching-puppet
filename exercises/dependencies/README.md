Making sure order is maintained
===============================

* Create a manifest which does two things:
	* installs a file to a machine
	```puppet
	user { 'joe':
		ensure => present,
		uid => 2000,
		gid => 10,
		comment => 'Joe User',
		managehome => true,
	}
	```
	and name it `user.pp`

* Apply the manifest
	```shell
	$ sudo puppet apply user.pp
	```

* Check that the user `joe` was indeed created.
	TBD
