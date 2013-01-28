# Public: Install dpkg via homebrew
#
# Examples
#
#   include dpkg
class dpkg {
  include homebrew

  homebrew::formula { 'dpkg':
    before => Package['boxen/brews/dpkg'],
  }

  package { 'boxen/brews/dpkg':
    ensure => '1.15.8.13-boxen1'
  }
}
