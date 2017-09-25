class profile::test::init {
  include stdlib
	#stage { 'last': }
	class { '::profile::test::atos': }
	class { '::profile::test::kocsistem': 
		stage => 'runtime',
	}
	#Stage["main"] -> Stage["last"]
}
