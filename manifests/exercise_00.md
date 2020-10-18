Install puppet
==============

* Install puppet
```console
$ sudo apt install puppet puppet-master
```

* Check that puppet master is running
```console
$ ps -ef | grep puppet
```

* Check that the system service manager knows about puppet
```console
$ systemctl status puppet-master.service
```

* Find the version of puppet client you have:
```console
$ puppet --version
```
