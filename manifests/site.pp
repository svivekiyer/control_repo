node default {
  file { '/root/README':
    ensure  => file,
    content => 'This is a readme file part of Learning Activity',
    owner   => 'root',
  }
}
