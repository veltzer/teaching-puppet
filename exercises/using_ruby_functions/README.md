Use a ruby function in your manifest
====================================

* Create a folder for your new function:
	```shell
	$ mkdir -p ~/.puppet/etc/code/environments/production/lib/puppet/functions
	```

* create a file `upcase.rb` and place it in the directory you prepared above:
	```ruby
	Puppet::Functions.create_function(:'upcase') do
	  dispatch :up do
	    param 'String', :some_string
	  end

	  def up(some_string)
	    some_string.upcase
	  end
	end
	```

* Create the following `use_upcaser.pp` puppet manifest file:
	```puppet
	notify { 'greeting':
	  message => upcaser('hello, puppet!'),
	}
	```

* Apply the resource and see if your function works.
```shell
$ puppet apply use_upcaser.pp
```
