class profile::pre {
  include ::nfs::client
  nfs::client::mount { '/scripts':
    mount => '/scripts',
    server => '192.168.33.50',
    share  => '/test',
    perm   => '0755',
    options => 'rw,nfsvers=3',
  } ->
  file { '/root/hello.txt':
    ensure => 'file',
    source => '/scripts/hello.txt',
    path   => '/root/hello.txt',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  } 

}
