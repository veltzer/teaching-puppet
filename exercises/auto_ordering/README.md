Making sure order is maintained
===============================

The idea of this exercise is to show you that sometimes, not always, puppet
automatically deduces the order between resources.

* Create a manifest which has both a user and a group in it, but make sure
	to put the user before the group:
	```puppet
	user { 'test_puppet_user':
		ensure => present,
		uid => test_puppet_group,
	}
	group { 'test_puppet_group':
		ensure => present,
	}
	```
	and name it `user_group.pp`

* Apply the manifest
	```shell
	$ sudo puppet apply user_group.pp
	```

* In what order did puppet create the two resources? Is it in the order of the file?
	What do you deduce from this?
