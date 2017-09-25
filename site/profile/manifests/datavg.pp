class profile::datavg (
  Hash $volume_groups = hiera(lvm::volume_groups::datavg),
  Hash $logical_volumes = hiera(lvm::volume_groups::datavg::logical_volumes),
  ) {
  # It must be done in other way! Problem with physical servers
  if $facts['disks']['sdb'] {
    $default_dirs = [ '/bigtemp' ]
    file { $default_dirs:
      ensure => 'directory',
    }
    create_resources('lvm::volume_group', $volume_groups)
    create_resources('lvm::logical_volume', $logical_volumes)
  }
}
