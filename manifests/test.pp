#this is a first comment
#this is a second comment
file { '/tmp/hello':
  ensure  => present,
  content => 'Hello world',
}
