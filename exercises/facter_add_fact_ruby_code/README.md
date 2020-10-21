Add USB info as Facter fact
===========================

* Create a folder in your home directory called "myfacts"

* Create a file called `shell_number.rb` with the following content:
	```ruby
	# shell_number.rb

	Facter.add('shell_number') do
		setcode do
			line_count = 0 #  w  w w  . j a v a2s  .co  m
			File.open('/etc/shells').each do |line|  
				line_count += 1 
				text << line 
			end
			line_count
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
	Create the follwing manifest and call it `test_shell_number.pp`:
	```puppet
	file { "/etc/test_${shell_number}":
	  ensure => 'present',
	}

* Apply the manifest with:
	```shell
	$ sudo -E /opt/puppetlabs/bin/puppet apply test_shell_number.pp
	```

