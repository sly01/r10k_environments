class profile::post {

  fstab { 'Remove Another test fstab entry':
    source => '192.168.33.50:/test',
  	dest   => '/scripts',
  	type   => 'nfs',
  	ensure => absent,
  }

}
