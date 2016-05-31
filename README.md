# puppet-ssh

[![Build Status](https://travis-ci.org/thias/puppet-ssh.png?branch=master)](https://travis-ci.org/thias/puppet-ssh)

## Overview

Install, enable and configure ssh and sshd. Currently supports RHEL6 and
RHEL7 (and their rebuilds).

* `ssh::service` : Class to manage the `sshd` service.
* `ssh::sshd_config` : Class to manage the main `sshd_config` file.

The configuration changes made by this module are meant to be defined from
hiera, in order to make specific overrides very easy. They are also meant
to be minimal against the original files, in order to be trivial to review,
as sshd is a really critical service.

The `ssh::service` class is included from `ssh::sshd_config` and really only
exists in order to have configuration changes reload the service.

## Examples

Disable password authentication and X11 forwarding globally, and permit root
login only from some specific IP addresses :

```yaml
---
classes:
  - '::ssh::sshd_config'
ssh::sshd_config::permitrootlogin: 'no'
ssh::sshd_config::passwordauthentication: 'no'
ssh::sshd_config::x11forwarding: 'no'
ssh::sshd_config::match:
  'Address 203.0.113.17,192.168.113.17,2001:db8:1:a211::1':
    'PermitRootLogin': 'yes'
```

Configure IdM authorized keys through SSSD :

```yaml
---
classes:
  - '::ssh::sshd_config'
ssh::sshd_config::authorizedkeyscommand: '/usr/bin/sss_ssh_authorizedkeys'
ssh::sshd_config::authorizedkeyscommanduser: 'nobody'
```

