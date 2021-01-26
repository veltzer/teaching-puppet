file { '/etc/ssh/sshd_config':
  ensure  => file,
  mode    => '0600',
  content =>  "",
  notify  => Service['sshd'],
}

