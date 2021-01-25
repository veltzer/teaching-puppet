file { '/etc/puppet_exercise_00':
	ensure => 'present',
		content => 'this is the content',
		owner => 'root',
		group => 'root',
		mode => '0644',
}
