# == Class: snapper
#
# A module to handle filesystem snapshots through snapper
#
# === Parameters
# ["version"]
#   The package version to install
#
# ["basedir"]
#   Root directory of subvolumes to be snapshotted
#
# ["configs"]
#   An array of subvolumes to snapshot, relative to basedir
#
# ["enable"]
#   Should the service be enabled during boot time?

class snapper (
  $version = 'present',
  $basedir = '/mnt/',
  $configs = ['default'],
  $enable = true,
  )  {
    class{'snapper::install': } ->
    class{'snapper::configure': } ->
    Class['snapper']
  }
