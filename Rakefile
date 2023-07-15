# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"

RSpec::Core::RakeTask.new(:spec)

require "rubocop/rake_task"

RuboCop::RakeTask.new

require "rb_sys/extensiontask"

task build: :compile

RbSys::ExtensionTask.new("ruby_rust_sndbox") do |ext|
  ext.lib_dir = "lib/ruby_rust_sndbox"
end

task default: %i[compile spec rubocop]
