class squid::service inherits squid {
	if ! ($squid::service_ensure in [ 'running', 'stopped' ]) {
    fail('service_ensure parameter must be running or stopped')
  }

  if $squid::service_manage == true {
    service { 'squid':
      ensure     => $squid::service_ensure,
      enable     => $squid::service_enable,
      name       => $squid::service_name,
      hasstatus  => true,
      hasrestart => true,
    }
  }
}