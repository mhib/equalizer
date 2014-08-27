require "bundler/gem_tasks"
task(:spec) do
  require 'rspec'
  RSpec::Core::Runner.run(%w[--format documentation --color spec])
end
task default: [:spec]

