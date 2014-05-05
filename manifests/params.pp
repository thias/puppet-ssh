class ssh::params {

  case "${::operatingsystem}-${::operatingsystemmajrelease}" {
    'RedHat-6','CentOS-6': {
      $template_dir = "rhel6"
      $service_name = 'sshd'
      $service_restart = "/sbin/service ${service_name} reload"
    }
    'RedHat-7','CentOS-7': {
      $template_dir = "rhel7"
      $service_name = 'sshd'
      $service_restart = "/usr/bin/systemctl reload ${service_name}.service"
    }
    default: {
      # Bail out, we need the original file to create a template and add the
      # configuration above.
      fail("Unsupported OS release ${::operatingsystem} ${::operatingsystemmajrelease}")
    }
  }

}

