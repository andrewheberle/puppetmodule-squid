class squid::config inherits squid {

  file { $squid::config_file:
    ensure  => file,
    owner   => $squid::config_file_owner,
    group   => $squid::config_file_group,
    mode    => "${squid::config_file_mode}",
    content => epp($squid::config_file_template),
  }
}