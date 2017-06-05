require 'spec_helper'
describe 'emacs' do

  context 'with defaults for all parameters' do
    it { should contain_class('emacs') }
  end
end
