class squid (
  # defaults from heira in squid/data
  $service_ensure,
  $service_manage,
  $service_name,
  $config_file,
  $config_file_mode,
  $config_file_owner,
  $config_file_group,
  $config_file_template,
  $package_ensure,
  $package_name,
  $package_manage,
  $acl_safe_ports,
  $acl_ssl_ports,
  $acl_localnet,
  $acl_connect,
  $http_port,
) {

  anchor { 'squid::begin': } ->
  class { '::squid::install': } ->
  class { '::squid::config': } ~>
  class { '::squid::service': } ->
  anchor { 'squid::end': }
}
