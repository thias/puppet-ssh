# Parameters class, not meant to be used on its own
#
class ssh::params {

  $os_name_maj = "${facts['os']['name']}-${facts['os']['release']['major']}"

  case $os_name_maj {
    'RedHat-6','CentOS-6','Scientific-6': {
      $template_dir = 'rhel6'
      $service_name = 'sshd'
      $service_restart = "/sbin/service ${service_name} reload"
    }
    'RedHat-7','CentOS-7': {
      $template_dir = 'rhel7'
      $service_name = 'sshd'
      $service_restart = "/usr/bin/systemctl reload ${service_name}.service"
    }
    'RedHat-8','CentOS-8': {
      $template_dir = 'rhel8'
      $service_name = 'sshd'
      $service_restart = "/usr/bin/systemctl reload ${service_name}.service"
    }
    'RedHat-9','CentOS-9': {
      $template_dir = 'rhel9'
      $service_name = 'sshd'
      $service_restart = "/usr/bin/systemctl reload ${service_name}.service"
    }
    'RedHat-10','CentOS-10': {
      $template_dir = 'rhel10'
      $service_name = 'sshd'
      $service_restart = "/usr/bin/systemctl reload ${service_name}.service"
    }
    default: {
      # Bail out, we need the original file to create a template and add the
      # configuration above.
      fail("Unsupported OS-Release ${os_name_maj}")
    }
  }

}
