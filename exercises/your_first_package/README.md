Run your first package manifest
===============================

* Check that the package "xbill" is not installed using:

```shell
dpkg --status xbill
```

* Create a manifest `package.pp` with the following content:

```puppet
package { 'xbill':
  ensure => installed,
}
```

* Apply the manifest

```shell
sudo puppet apply package.pp
```

* Check that the package "xbill" was installed using

```shell
dpkg --status xbill
```

* On your own without instructions: Create a similar manifest to remove the package and apply it.
