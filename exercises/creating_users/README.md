Creating users with puppet
==========================

* Create a manifest `user.pp` with the following content:
	```puppet
	user { 'joe':
		ensure => present,
		uid => 2000,
		gid => 10,
		comment => 'Joe User',
		managehome => true,
	}
	```

* Apply the manifest

```shell
$ sudo puppet apply user.pp
```

* Check that the user `joe` was indeed created.
```shell
$ getent passwd joe
```
The users details should show up.

* Self exercise with no instructions: remove the user you created

* Check that the user no longer exists by getting no output from the command:
```shell
$ getenv passwd joe
```
