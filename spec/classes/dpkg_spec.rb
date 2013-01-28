require 'spec_helper'

describe 'dpkg' do
  let(:facts) do
    {
      :boxen_home => '/opt/boxen',
      :boxen_user => 'testuser'
    }
  end

  it do
    should contain_homebrew__formula('dpkg').
      with_before('Package[boxen/brews/dpkg]')

    should contain_package('boxen/brews/dpkg').with({
      :ensure => '1.15.8.13-boxen1'
    })
  end
end
