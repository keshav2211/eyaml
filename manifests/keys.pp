class eyaml::keys {

require ::eyaml

#directory for keys
file { '/etc/puppetlabs/puppet/keys':
  ensure => 'directory',
  owner  => 'pe-puppet',
  group  => 'pe-puppet',
  mode   => '0500',
  before => Exec['eyaml_createkeys'],
 }

#eyaml binary createkeys
exec { 'eyaml_createkeys':
  command => 'eyaml createkeys',
  path    => '/opt/puppetlabs/puppet/bin/',
  cwd     => '/etc/puppetlabs/puppet',
  creates => '/etc/puppetlabs/puppet/keys/private_key.pkcs7.pem',
  }

#set file permissions
file { ['/etc/puppetlabs/puppet/keys/private_key.pkcs7.pem','/etc/puppetlabs/puppet/keys/public_key.pkcs7.pem'] :
  ensure    => 'present',
  owner     => 'pe-puppet',
  group     => 'pe-puppet',
  mode      => '0400',
  subscribe => Exec['eyaml_createkeys'],
  }

}
