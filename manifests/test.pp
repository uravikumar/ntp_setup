file { '/tmp/hello':
  ensure  => present,
  content => 'Hello world',
}
