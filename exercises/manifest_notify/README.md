Notifying package to refresh
============================


NOTICE!!! This exercise talks about sshd all over. Don't use sshd, instead just
install 'nginx' and use that as your server.

DONT DO IT WITH SSH OR YOU MIGHT LOSE CONNECTION WITH YOUR MACHINE, FOREVER!!!

* Many packages run as daemons and need to be refreshed if their configuration changes.
This could be done by restarting them:

```shell
sudo /etc/init.d/ssh restart
```

or by sending them a SIGHUP signal:
```shell
sudo kill -SIGHUP $(pgrep -f "sshd -D")
```

or possibly other ways.

* First see that you are to see when your ssh daemon refreshes.

* In one terminal do

```shell
tail -f /var/log/auth.log
```

* In another terminal do

```shell
sudo kill -SIGHUP $(pgrep -f "sshd -D")
```

* do you see when sshd restarts?

* In this exercise you need to install a new config file for sshd `/etc/ssh/sshd_config.d/empty.conf'

* Once you do this ssh needs to be refreshed.

* Bonus phase: can you find how ssh automatically looks at every file in `/etc/ssh/sshd_config.d`?

* Create a manifest with a file resource that, when installs, notifies the sshd server to refresh
itself. Search the documentation of puppet yourself.