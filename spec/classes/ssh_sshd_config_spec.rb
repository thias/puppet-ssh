require 'spec_helper'

describe 'ssh::sshd_config' do

  let(:title) { 'ssh::sshd_config' }
  let(:facts) { {
    :operatingsystem           => 'RedHat',
    :operatingsystemmajrelease => '7',
  } }

  describe 'Test default sshd configuration' do
    it { should contain_class('ssh::service') }
    it { should contain_file('/etc/ssh/sshd_config') \
      .without_content(/^Port/) \
      .without_content(/^PermitRootLogin/)
    }
  end

  describe 'Test sshd_config permissions' do
    it { should contain_file('/etc/ssh/sshd_config').with({
      'owner'  => 'root',
      'group'  => 'root',
      'mode'   => '0600',
    })}
  end

  describe 'Test sshd_config port' do
    let(:params) { { :port => '2222' } }
    it { should contain_file('/etc/ssh/sshd_config') \
      .with_content(/^Port 2222$/)
    }
  end

  describe 'Test sshd_config permitrootlogin' do
    let(:params) { { :permitrootlogin => 'yes' } }
    it { should contain_file('/etc/ssh/sshd_config') \
      .with_content(/^PermitRootLogin yes$/)
    }
  end

end
