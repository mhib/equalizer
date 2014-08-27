# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'equalizer/version'

Gem::Specification.new do |spec|
  spec.name          = "equalizer"
  spec.version       = Equalizer::VERSION
  spec.authors       = ["Marcin Henryk Bartkowiak"]
  spec.email         = ["mhbartkowiak@gmail.com"]
  spec.summary       = %q{My version of equalizer gem}
  #spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.license       = "MIT"
  spec.homepage      = ""

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
