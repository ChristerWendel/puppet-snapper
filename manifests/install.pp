# == Class: snapper::install
#
# Installs the snapper package
class snapper::install {
  package { 'snapper':
    ensure => $snapper::version,
  }
}
