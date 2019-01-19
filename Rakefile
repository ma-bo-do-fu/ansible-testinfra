require 'rake'
require 'rspec/core/rake_task'

hosts = [
  {
    name:       'app',
  },
  {
    name:       'web',
  }
]

class ServerspecTask < RSpec::Core::RakeTask
  attr_accessor :target

  def spec_command
    cmd = super
    "env DOCKER_CONTAINER_NAME=#{target} #{cmd}"
  end
end

task default: :spec

desc 'Run serverspec to all hosts'
task spec: hosts.map { |host| "spec:#{host[:name]}" }

namespace :spec do
  hosts.each do |host|
    desc "Run serverspec to #{host[:name]}"
    ServerspecTask.new(host[:name].to_sym) do |t|
      t.target = host[:name]
      t.pattern = "spec/roles/#{host[:name]}_spec.rb"
    end
  end
end