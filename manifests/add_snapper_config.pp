# Helper function to add snapper configuration
define snapper::add_snapper_config {
  $basedir = $snapper::basedir

  exec { $title:
    command => "/usr/bin/snapper --config ${title}\
    create-config ${basedir}/${title}",
    creates => "/etc/snapper/configs/${title}",
  }
}
