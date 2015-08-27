class eyaml::keys {

require ::eyaml

#directory for keys
file { ' [ '/etc/puppetlabs/puppet/secure', '/etc/puppetlabs/puppet/secure/keys' ]:
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
  cwd     => '/etc/puppetlabs/puppet/secure/',
  creates => '/etc/puppetlabs/puppet/secure/keys/private_key.pkcs7.pem',
  }

#set file permissions
file { ['/etc/puppetlabs/puppet/secure/keys/private_key.pkcs7.pem','/etc/puppetlabs/puppet/secure/keys/public_key.pkcs7.pem'] :
  ensure    => 'present',
  owner     => 'pe-puppet',
  group     => 'pe-puppet',
  mode      => '0400',
  subscribe => Exec['eyaml_createkeys'],
  }

}
