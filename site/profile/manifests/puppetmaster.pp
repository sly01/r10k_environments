class profile::puppetmaster {
  class { 'puppetdb':
    listen_port     => '9690',
    ssl_listen_port => '9691',
    database_port   => '6543',
    manage_firewall => 'false',
  }
  # Configure the Puppet master to use puppetdb
  class { 'puppetdb::master::config':
    puppetdb_port => '9691',
  }
}
