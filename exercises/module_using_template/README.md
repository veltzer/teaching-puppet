Module using template
=====================

* create a module that installs the `xbill` package.
* lets imagine that `xbill` has a config file called `/etc/xbill.conf`
* install this `/etc/xbill` file *after* installing the package `xbill`.
* the file has the following content:

```text
[main]
# frames per second
xbill_animation_speed = 50
```

* Allow the user of your module to specify the "xbill_animation_speed" parameter.
* Use templates for your solution.

```puppet
xbill { "foobar":
	xbill_animation_speed => 60,
}
```
