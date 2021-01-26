Connect server and client
=========================

In this exercise we will connect a puppet master/server and a puppet agent
and see that the master keeps the agent in sync.
We will use one machine to act both as master and as agent.

* Install puppet agent and server using the following script: 

```shell
sudo apt install puppet puppet-master
```

* Check that your master is running using:

```shell
sudo systemctl status puppetmaster.service
```

* Check that you can use `puppet` on the command line.
You may need to re-login for that.
You may need to do

```shell
hash -r
```

You may need to silence ruby warnings using:

```shell
export RUBYOPT="-W0"
```

add this to ~/.bashrc of the root account as well

* Examine your clients configuration using:

```shell
puppet config print
```

* Sign the agent by the server. Use the commands:

```shell
puppet agent --waitforcert 60 --test
```

and

```shell
puppet cert ...
```

and configure the client and server to find each other

* Run the agent for real:
```shell
puppet agent --no-daemonize --debug
```

and see that it connects to the master and applies its first catalog.
