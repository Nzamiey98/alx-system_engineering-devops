# Create a file in /tmp

file { '/tmp/school':
  ensure  => file,
  content => 'I love Puppet',
  mode    => '0744',
  owner   => 'www-data',
  group   => 'www-data',
  path    => '/tmp/school',
}

1-install_a_package.pp

# install_flask.pp

# Ensure pip3 is installed
package { 'python3-pip':
  ensure => installed,
}

# Install Flask version 2.1.0 using pip3
exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  creates => '/usr/local/lib/python3.*/dist-packages/Flask-2.1.0.dist-info',
  require => Package['python3-pip'],
  path    => '/usr/bin',
}

