# Class: livereload
#
# This module setup livereload in /var/www dir
#
# Parameters:
#
# Actions:
#
# Requires:
#   puppetlabs/nodejs https://github.com/puppetlabs/puppetlabs-nodejs
#	edentic/puppet-gulpjs https://github.com/Edentic/puppet-gulpjs
# Sample Usage:
#   include livereload
#
#   class {'livereload':
#   }

class livereload {
  nodejs::npm { '/var/www:gulp-livereload':
    ensure  => present,
    install_opt => '--save-dev',
    require => Class['gulpjs']
  }
}