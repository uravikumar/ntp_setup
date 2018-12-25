#this is a test manifest
#this is second comment
file { '/tmp/hello':
  ensure  => present,
  content => 'Hello world',
}
