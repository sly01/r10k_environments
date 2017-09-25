class profile::base {

  #the base profile should include component modules that will be on all nodes
	class { '::rsyslog::client': }
  class { 'profile::pre': }
  
  augeas { 'Adding nagios to access.conf':
     context => '/etc/security/access.conf',
     changes => [ 
       "set /files/etc/security/access.conf/access[user = 'nagios']/user nagios",
       "set /files/etc/security/access.conf/access[user = 'nagios'] +",
       "set /files/etc/security/access.conf/access[user = 'nagios']/origin ALL",
     ]
  } 
	
}
