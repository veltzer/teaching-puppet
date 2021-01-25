Your first puppet manifest
==========================

* Create a manifest like this:

```puppet
notify { 'greeting':
  message => 'Hello, world!',
}
```

and name it `hello.pp`

* Apply it with:

```shell
foo@bar:~$ puppet apply hello.pp
```
