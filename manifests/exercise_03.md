Creating users with puppet
==========================

* Create a manifest like this:

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

```console
mark@gandalf:~$ sudo puppet apply user.pp
```

* Check that the user `joe` was indeed created.

TBD
