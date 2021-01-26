package { 'openssh-server':
  ensure => 'installed',
}

service { 'ssh':
  ensure => 'running',
  require => Package['openssh-server'],
}

file { '/etc/ssh/sshd_config.d/empty':
  mode    => '0600',
  content => "",
  require => Package['openssh-server'],
  notify  => Service['ssh'],
}
