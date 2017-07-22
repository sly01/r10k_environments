class profile::base {

  #the base profile should include component modules that will be on all nodes
	class { '::rsyslog::client': }
	
	include ::nfs::client

	nfs::client::mount { '/scripts':
		server => '192.168.33.50',
		share  => '/test',
		options => 'rw,vers=3',
	}

}
