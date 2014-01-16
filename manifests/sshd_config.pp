# Class: ssh::sshd_config
#
# Class to manage the main sshd_config file.
#
# All parameters default to undef, meaning that the original
# defaults are used.
#
# Sample Usage :
#     include '::ssh::sshd_config'
#
class ssh::sshd_config (
  $port                   = undef,
  $permitrootlogin        = undef,
  $pubkeyauthentication   = undef,
  $passwordauthentication = undef,
  $x11forwarding          = undef,
  $match                  = undef,
  $template_dir           = $::ssh::params::template_dir,
) inherits ::ssh::params {

  include '::ssh::service'

  file { '/etc/ssh/sshd_config':
    owner   => 'root',
    group   => 'root',
    mode    => '0600',
    content => template("${module_name}/${template_dir}/sshd_config.erb"),
    notify  => Service[$service_name],
  }

}

