class profile::post {
  mount { 'Unmounting of nfs share for hello.txt':
    ensure => absent,
		name => '/scripts',
  }
}
