#### 2016-05-31 - 1.0.7
* Update Gemfile to fix travis-ci tests with ruby 1.8.
* Update metadata for newer Puppet compatibility.

#### 2016-05-31 - 1.0.6
* Remove Gentoo support, unused by me now, and nobody else uses it.
* Add parameters to meet the SCAP ospp-rhel7-server profile (#5, @roysjosh).

#### 2016-02-05 - 1.0.5
* Added authorizedkeyscommand and authorizedkeyscommanduser options (@scrat14)

#### 2016-02-01 - 1.0.4
* Fix hash ordering consistency for sshd_config match.
* Include rspec tests.

#### 2015-05-20 - 1.0.3
* Update rhel7 sshd_config to match the current 7.1 one.
* Tested on Puppet 4.0.0.

#### 2015-03-31 - 1.0.2
* Add clientalive*, bannerpath and internalsftp options (@tracyde).

#### 2015-03-31 - 1.0.1
* Fix Gentoo in params, now that it has a majrelease (3 as of now).
* Cleanups to make Puppet Lint and Forge score happy.

#### 2014-09-09 - 1.0.0
* Add support for Scientific Linux 6.

#### 2014-08-04 - 0.1.5
* Add support for Gentoo.
* Support UsePAM and ChallengeResponseAuthentication sshd_config options.

#### 2014-06-02 - 0.1.4
* Update template to match the current EL 6.5 file.
* Add support for CentOS.
* Add support for RHEL 7.

#### 2014-01-29 - 0.1.3
* Fix for missing '@' prefix of @usedns in template.

#### 2014-01-16 - 0.1.2
* Support UseDNS sshd_config option.

#### 2014-01-16 - 0.1.1
* Support adding Match sections to sshd_config.

#### 2013-10-02 - 0.1.0
* Initial module release.

