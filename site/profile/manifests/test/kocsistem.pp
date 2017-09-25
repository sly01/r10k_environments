class profile::test::kocsistem {
	file { '/tmp/kocsistem.txt':
		ensure => present,
		path => '/tmp/kocsistem.txt',
		owner => 0,
		group => 0,
		content => "Merhaba ben Kocsistem",
	}
}
