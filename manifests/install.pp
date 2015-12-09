class squid::install inherits squid {
  if $squid::package_manage {
    
    package { $squid::package_name:
      ensure => $squid::package_ensure,
    }
  }
}