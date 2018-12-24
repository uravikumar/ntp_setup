#this module sets ntp configuration
#this is second comment line
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
