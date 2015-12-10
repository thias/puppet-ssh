require 'spec_helper'

describe 'ssh::service' do

  let(:title) { 'ssh::service' }
  let(:facts) { {
    :operatingsystem           => 'RedHat',
    :operatingsystemmajrelease => '7',
  } }

  describe 'Test default service' do
    it { should contain_service('sshd').with({
      'ensure' => 'running',
      'enable' => true,
    })}
  end

end
