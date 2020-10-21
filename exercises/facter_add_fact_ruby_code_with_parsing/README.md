Add USB info as Facter fact
===========================

* Create a folder in your home directory called "myfacts"

* Create a file called `usb.rb` with the following content:
```ruby
# usb.rb

Facter.add('usb') do
  setcode do
    Facter::Core::Execution.execute('lsusb')
  end
end
```

and place it in the newly created folder `~/myfacts`

* Add `~/myfacts` to Facter search path using `FACTERLIB` environment variable:
```shell
$ export FACTERLIB="${HOME}/myfacts"
```

* See that Facter knows about your fact:
```shell
$ facter usb
```

* Use the new fact in a manifest
TBD
