Use strict variables
====================

* Create the following `strict_variables.pp` manifest:

```puppet
file { '/etc/test.${extension}':
  ensure => present,
}
```

* Apply it:

```shell
puppet apply strict_variblaes.pp
```

* What file was created? What did you learn from this?

* Change the manifest to include the setting of the `extension` variable.

* Re apply the manifest and see that all is well.

* add

```
strict_variables = true
```

to your puppet config file at `~/.puppt/pupput.conf`

* remove the declaration of the `extension`

* Re apply the manifest.

* What happened?
