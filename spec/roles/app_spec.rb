require 'spec_helper'

describe 'app' do
  describe package('httpd') do
    it { should be_installed }
  end
end