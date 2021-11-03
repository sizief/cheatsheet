Puppet configure machines. 
- Rules and config write down to files and modules.
- It can have one server and agents ask for compiled set of changes from the server (master/client)
- Or those modules can be hosted on each agent then agent can apply them (masterless)
- Or by using Bolt admin can run puppet on each node via SSH (no agent needed)

### Helpers
notice('anything')

echo 'notice($filesystems)' | puppet apply # pass fact to puppet apply

```
Package['ntp'] -> File['/etc/ntp.conf'] ~> Service['ntpd']
```For `File['/etc/ntp.conf']`, puppet needs to make sure that the package `ntp` has been installed before it creates or updates the file `ntp.conf`. There is no restart request.

But for Service['ntpd'], `ntp.conf` needs to exist first - that's the same order as `->`. *** But if puppet finds the file `ntp.conf` has any changes (whether it is created or updated), service ntp needs to be restarted. That's the difference***.
```

function_name(argument, argument, ...) |$parameter, $parameter, ...| { code block } # EXAMPLE map($the_hash) |$k, $v| { "${k} => ${v}" }

### folder structure
- environemnts/production/modules
- environments/production/modules/NGINX/manifests # manifest for module
- environments/production/manifest # manifest for environemnt

### run 
puppet agent -t # on client, it request compiled manifest from the master and then apply 
puppet apply # compile and apply the manfiest on local. no master needed

Or use bolt to apply puppet on many nodes. It connects to them using SSH and apply changes.
```
bolt task run psick::puppet_agent environment=host --modules /local/path/to/modules/ --user bolt remove -n git.lab.psick.io
```

### sign CA
/opt/puppetlabs/bin/puppetserver ca setup
puppetserver ca list
puppetserver ca sign --certname CLIENT

### create module
cd /etc/puppetlabs/code/environment/production
apt-get install pdk
pdk new module nginx
pdk new class install

params.pp
```
class nginx::params {
  $package_name = 'nginx'
  $service_name = 'nginx'

  case $::osfamily {
    'RedHat': {
      $config_path = '/etc/redhatpath'
      $config_source = '/source'
    }
    'Debian': {
      $config_path = '/etc/nginx/nginx.conf'
      $config_source = 'puppet:///modules/nginx/deb-nginx.conf'
    }
  }
}
```

service.pp
```
class nginx::service (
  $service_name = $nginx::params::service_name
) inherits nginx::params {
  service { 'nginx_service':
    name       => $service_name,
    ensure     => 'running',
    enable     => true,
    hasrestart => true
  }  
}
```

config.pp
```
class nginx::config (
  $config_path = $nginx::params::config_path,
  $config_source = $nginx::params::config_source,
) inherits nginx::params {
  file { 'nginx_config':
    path   => $config_path,
    source => $config_source,
    ensure => 'present',
    notify => Service['nginx_service'], 
  }
}
```

install.pp 
```
class nginx::install (
  $package_name = $nginx::params::package_name
) inherits nginx::params {
  package { 'install_nginx':
    name   => $package_name,
    ensure => 'present'
  }
}
```

init.pp
```
class nginx (
    $package_name = $nginx::params::package_name,
  $config_path  = $nginx::params::config_path,
  $config_source  = $nginx::params::config_source,
  $service_name  = $nginx::params::service_name,
) inherits nginx::params {
  contain nginx::install
  contain nginx::config
  contain nginx::service

  Class['nginx::install']
  -> Class['nginx::config']
  ~> Class['nginx::service']
}
```
puppet parser validate manifests/install.pp

### FACTER
show facts about the host machine (OS, dates, everything)