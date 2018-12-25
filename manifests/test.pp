#this is a test manifest
file { '/tmp/hello':
  ensure  => present,
  content => 'Hello world',
}
