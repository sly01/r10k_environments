class profile::base {

  #the base profile should include component modules that will be on all nodes
	class { '::rsyslog::client': }
	
	include ::nfs::client

	nfs::client::mount { '/scripts':
		mount => '/scripts',
		server => '192.168.33.50',
		share  => '/test',
		perm   => '0755',
		options => 'rw,nfsvers=3',
	}

}
