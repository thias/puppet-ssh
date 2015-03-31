# Class: ssh::service
#
class ssh::service (
  $service_name    = $::ssh::params::service_name,
  $service_restart = $::ssh::params::service_restart,
) inherits ::ssh::params {

  # We're going to assume the package is already there.
  # This is also because things get complicated when there
  # is a split between server/client on some OSes, but not
  # on others.

  service { $service_name :
    ensure    => 'running',
    enable    => true,
    hasstatus => true,
    restart   => $service_restart,
  }

}
