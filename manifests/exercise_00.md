* Create the following manifest:

```puppet
    node default {
    	file { '/etc/puppet_exercise_00': #the path of the new file
    		ensure => 'present',
    		content => 'this is the content', #this text will be inside the file
    		owner => 'root',
    		group => 'root',
    		mode => '0644',
    	}
    }
```

and name it exercise00.pp

* Apply the manifest
	sudo puppet apply 

