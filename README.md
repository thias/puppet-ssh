# puppet-ssh

## Overview

Install, enable and configure ssh and sshd.

* `ssh::sshd_config` : Class to manage the main sshd_config file.

The configuration changes made by this module are meant to be defined from
hierad, in order to make specific overrides very easy to make.

## Examples

Through hiera :

    ---
    classes:
      - '::ssh::sshd_config'
    ssh::sshd_config::permitrootlogin: 'no'
    ssh::sshd_config::passwordauthentication: 'no'
    ssh::sshd_config::x11forwarding: 'no'

