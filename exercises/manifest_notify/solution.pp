package { 'nginx':
  ensure => 'installed',
}

service { 'nginx':
  ensure => 'running',
  require => Package['nginx'],
}

file { '/etc/nginx/conf.d/puppet_teaching_empty':
  ensure  => present,
  mode    => '0600',
  content => "",
  notify  => Service['nginx'],
}
