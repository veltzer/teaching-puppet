Add PCI info as Facter fact
===========================

* Create a folder in your home directory called "myfacts"

* Create a file called `pci.rb` with the following content:
	```ruby
	# pci.rb

	Facter.add('pci') do
	  setcode do
	    Facter::Core::Execution.execute('lspci')
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
	$ facter pci
	```

* This is the hard part: write some ruby code to parse the output and create a hash map
	type data structure and not just return the entire output of lspci
	(this means change the ruby code above).
	You will need some ruby knowledge to do this.

* Now create a puppet manifest that prints the name of your network card.
