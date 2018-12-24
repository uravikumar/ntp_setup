#this module sets ntp configuration
class ntp_setup {
  ensure_packages(['ntp'])
    file { '/etc/ntp.conf':
    source => 'puppet:///modules/pbg_ntp/ntp.conf',
    notify => Service['ntp'],
    require => Package['ntp'],
  }
  
  service { 'ntp':
    ensure => running,
    enable => true,
  }
}
