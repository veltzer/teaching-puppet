Module with conditional and facter
==================================

* You can see facts about the external work using facter. Just run:

```shell
facter
```

* Now add to your module a conditional based on os family
if you are on a Debian type system install the package `xbill`
if you are on a Redhat type system install the package `gnupg`
