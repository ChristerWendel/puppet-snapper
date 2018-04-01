# == Class: snapper::configure
#
# Configures snapper
class snapper::configure {
  $configs = $snapper::configs

  snapper::add_snapper_config { $configs: }
}
