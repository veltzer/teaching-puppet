class tmpl(Integer $animation_speed = 50) {
    package { 'xbill':
        ensure => installed,
    }
    file { '/etc/xbill.conf':
        ensure => present,
        content => epp("${module_name}/xbill.conf.epp", {'animation_speed' => $animation_speed}),
    }
}
