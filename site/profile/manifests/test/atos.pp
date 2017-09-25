class profile::test::atos {
	file { '/tmp/atos.txt':
		ensure => present,
		path => '/tmp/atos.txt',
		owner => 0,
		group => 0,
		content => "Merhaba ben Atos",
	}
}
