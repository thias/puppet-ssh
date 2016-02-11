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
  $port                            = undef,
  $protocol                        = undef,
  $ciphers                         = undef,
  $macs                            = undef,
  $permitrootlogin                 = undef,
  $pubkeyauthentication            = undef,
  $permitemptypasswords            = undef,
  $passwordauthentication          = undef,
  $challengeresponseauthentication = undef,
  $usepam                          = undef,
  $x11forwarding                   = undef,
  $permituserenvironment           = undef,
  $clientaliveinterval             = undef,
  $clientalivecountmax             = undef,
  $usedns                          = undef,
  $bannerpath                      = undef,
  $match                           = undef,
  $authorizedkeyscommand           = undef,
  $authorizedkeyscommanduser       = undef,
  $internalsftp                    = false,
  $template_dir                    = $::ssh::params::template_dir,
  $service_name                    = $::ssh::params::service_name,
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
