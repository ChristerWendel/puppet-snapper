# == Class: snapper::configure
#
# Configures snapper
class snapper::configure {
  $configs = $snapper::configs

  add_snapper_config { $configs: }
}
