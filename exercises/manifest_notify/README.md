Notifying package to refresh
============================

* Many packages run as daemons and need to be refreshed if their configuration changes.
This could be done by restarting them:

```shell
sudo /etc/init.d/nginx restart
```

or by sending them a SIGHUP signal:

```shell
sudo kill -SIGHUP $(pgrep -f "/sbin/nginx")
```

or possibly other ways.

* First see that you are able to see when your `nginx` daemon refreshes.

* Issue:

```shell
echo $(pgrep -f "/sbin/nginx")
```

This gives you the nginx pid.

* Restart nginx:

```shell
sudo /etc/init.d/nginx restart
```

* Now get the pid again and see that it changed.

* In this exercise you need to install a new config file for sshd `/etc/nginx/cond.d/empty.conf'

* Once you do this nginx needs to be refreshed.

* Bonus phase: can you find how nginx automatically looks at every file in `/etc/nginx/conf.d`?

* Create a manifest with a file resource that, when installs, notifies the `nginx` server to refresh
itself. Search the documentation of puppet yourself.
