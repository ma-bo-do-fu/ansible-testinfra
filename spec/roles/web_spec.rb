require 'spec_helper'

describe 'web' do
  describe package('httpd') do
    it { should be_installed }
  end
end

