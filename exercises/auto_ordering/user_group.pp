user { 'test_puppet_user':
	ensure => present,
	gid => 'test_puppet_group',
}
group { 'test_puppet_group':
	ensure => present,
}
