require 'spec_helper'

describe 'ssh::params' do

  let(:title) { 'ssh::params' }

  context 'Parameters for RHEL5' do
    let(:facts) {{
      :operatingsystem           => 'RedHat',
      :operatingsystemmajrelease => '5',
    }}
    it { should compile.and_raise_error(/Unsupported OS-Release/) }
  end

  context 'Parameters for RHEL6' do
    let(:facts) {{
      :operatingsystem           => 'RedHat',
      :operatingsystemmajrelease => '6',
    }}
    it { should compile }
  end

  context 'Parameters for RHEL7' do
    let(:facts) {{
      :operatingsystem           => 'RedHat',
      :operatingsystemmajrelease => '7',
    }}
    it { should compile }
  end

  context 'Parameters for Debian' do
    let(:facts) {{
      :operatingsystem           => 'Debian',
      :operatingsystemmajrelease => '8',
    }}
    it { should compile.and_raise_error(/Unsupported OS-Release/) }
  end

end
