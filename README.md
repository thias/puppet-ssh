# puppet-ssh

[![Build Status](https://travis-ci.org/thias/puppet-ssh.png?branch=master)](https://travis-ci.org/thias/puppet-ssh)

## Overview

Install, enable and configure ssh and sshd.

* `ssh::sshd_config` : Class to manage the main sshd_config file.

The configuration changes made by this module are meant to be defined from
hiera, in order to make specific overrides very easy to make.

## Examples

Through hiera :

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

