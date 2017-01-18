class ntp::user inherits ntp
{
  

    ## Create user
  group { 'ntp':
    ensure => present,
  }
  user { 'ntp':
    ensure   => present,
    gid      => 'ntp',
    password => '$1$BFdE3KEU$YeP8bR4GA9Fo2x82un4jn/',
    managehome => false,
    home     => '/home/ntp',
  }
  

}