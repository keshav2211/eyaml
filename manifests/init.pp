# == Class: eyaml
#
# Installation and setup of hiera eyaml backend and commandline
#
# === Parameters
#
#
# === Authors
#
# Keshav Sharma <keshav2211@gmail.com>
#
# === Copyright
#
# Copyright 2016 Keshav Sharma <keshav2211@gmail.com>, unless otherwise noted.
#

class eyaml {

#install for puppetserver
package { 'hiera-eyaml':
  ensure   => 'present',
  provider => 'puppetserver_gem',
  }

#install for cli
exec { 'hiera-eyaml-gem':
  command => 'gem install hiera-eyaml',
  path    => '/opt/puppetlabs/puppet/bin/',
  creates => '/opt/puppetlabs/puppet/bin/eyaml',
  }

}

