Install puppet
==============

* Install puppet

```shell
sudo apt install puppet puppet-master
```

* Check that puppet master is running

```shell
ps -ef | grep puppet
```

* Check that the system service manager knows about puppet

```shell
systemctl status puppet-master.service
```

* Check that the master is listening on the puppet port (8140):

* Find the version of puppet client you have:

```shell
puppet --version
```

* Bonus: install vim syntax highlighting (for vim fanatics)

```shell
sudo apt-get install vim-puppet
```

and

```shell
vim-addons install puppet
```

* Check that vim syntax highlighting is working by creating a file like this with vim:

```puppet
  notify { 'greeting':
    message => 'Hello, Puppet!',
  }
```

and seeing if vim gives you syntax highlighting...
