Examining Apply
===============

The idea of this exercise is to teach you how to see exactly what puppet is doing.

* create a manifest, like this `manifest.pp`:

```puppet
package { 'xbill':
	ensure => installed, 
}
```

* run

```shell
sudo puppet apply manifest.pp
```

and and try giving the following flags to `puppet apply`:
	* noop
	* debug
	* verbose
	* detailed-exitcodes
	* test
	
Always reverting with:

```shell
sudo dpkg --purge xbill
```
