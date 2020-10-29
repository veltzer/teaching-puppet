require 'spec_helper'

describe 'first_test' do
context 'Debian' do
    let(:facts) { {
    :osfamily => 'Debian',
    :operatingsystem => 'Ubuntu',
    :architecture => 'x86_64',
  } }

    it { is_expected.to contain_package('xbill') }
  end
end
