Connect server and client
=========================

In this exercise we will connect a puppet master/server and a puppet agent
and see that the master keeps the agent in sync.
We will use one machine to act both as master and as agent.

* Install puppet agent and server using the following script: 

```shell
#!/bin/sh
codename=$(lsb_release -sc)
wget "https://apt.puppet.com/puppet-release-${codename}.deb" -P /tmp
sudo dpkg -i "/tmp/puppet-release-${codename}.deb"
sudo apt-get update 
sudo apt-get install pdk puppet-agent puppetserver
```

* Check that you can use `puppet` on the command line. You may need to re-login for that.

* Add the names `puppermaster` and `puppetagent` by adding the line:

```text
127.0.0.1	puppetmaster puppetagent
```

to `/etc/hosts`

* Check that you can use the names `puppermaster` and `puppeagent` by doing

```shell
ping puppetmaster
```

and

```shell
ping puppetagent
```

* Check that you have the master running

```shell
ps -ef | grep master
puppet    973317       1  0 04:38 ?        00:00:03 /usr/bin/ruby /usr/bin/puppet master
```

* Connect from the agent

```shell
puppet agent --server puppetmaster --waitforcert 60 --test
```

* Sign the request from the client.

* Run the agent again.

```shell
puppet agent --no-daemonize --debug
```

and see that it connects to the master and applies its first catalog.
