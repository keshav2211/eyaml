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

