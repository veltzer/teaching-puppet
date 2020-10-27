Examining Apply
===============

The idea of this exercise is to teach you how to see exactly what puppet is doing.

* create a manifest, like this `manifest.pp`:
	```shell
	package { 'xbill':
	  ensure => installed, 
	}
	```

* run `sudo puppet apply manifest.pp` and and try out the following flags:
	* noop
	* debug
	* verbose
	* detailed-exitcodes
	* test
	Always reverting with:
	```shell
	$ sudo dpkg --purge xbill
	```
