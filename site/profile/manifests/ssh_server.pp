class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCsk2QUdE0lKcrHKuUWUvXq3kuL++pqBOck6vuL7HMxDOxvGGJVAHgn1rktellBjW+TzLqRI8OYybEFtD6MEd2gVsUHpBguFpO/iqflwj2vsGcQiMV22+h7GW8i7haKg4dx1mSwBFW5ZZahvIFH6VtN9vmrlCZAxreCi1OeW7wyka2JNSiCE7g5k5qyij4UT8gq4rDz7PO5YYEFl3gCW8KhNS9my3MPQrvpXU8X9PnDEj3ztNKF14dX3yq5YlME742fsiMmyZe6/dcc4JA64pXM+qEOvhm5XG5U51w8zri9vxu5cUmQFJxDvy9cOvih8+wR6XEVFjNJhWUWhu60Aywn',
  }  
}
