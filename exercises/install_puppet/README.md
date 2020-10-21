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

* Check that the master is listening on the puppet port (8140):

* Find the version of puppet client you have:
```console
$ puppet --version
```

* Bonus: install vim syntax highlighting (for vim fanatics)
```console
$ sudo apt-get install vim-puppet
```
and
```console
$ vim-addons install puppet
```

* Check that vim syntax highlighting is working by creating a file like this with vim:
```puppet
  notify { 'greeting':
    message => 'Hello, Puppet!',
  }
```

and seeing if vim gives you syntax highlighting...
