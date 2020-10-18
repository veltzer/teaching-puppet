Remove files
============

* create as root a file:
```console
$ sudo touch /etc/remove_file_exercise
```

* Create the following manifest:
```puppet
tidy { 'remove_file_exercise':
  path    =>  "/etc/remove_file_exercise"
}
```

* Apply the resource and see the file disappear.
