Connect server and client
=========================

In this exercise we will connect a puppet master and a puppet agent
and see that the master keeps the agent in sync.
We will use one machine to act both as master and as agent.

* Add the names `puppermaster` and `puppeagent` by adding the line:
```text
127.0.0.1	puppetmaster puppetagent
```

to `/etc/hosts`

* Check that you can use the names `puppermaster` and `puppeagent` by doing

```shell
$ ping puppetmaster
```
and
```shell
$ ping puppetagent
```

* Check that you have the master running
```shell
$ ps -ef | grep master
puppet    973317       1  0 04:38 ?        00:00:03 /usr/bin/ruby /usr/bin/puppet master
```

* Connect from the client
```shell
$ puppet agent --server puppetmaster --waitforcert 60 --test
```
