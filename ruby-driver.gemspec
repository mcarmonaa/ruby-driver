# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruby/driver/version'

Gem::Specification.new do |spec|
  spec.name          = "ruby-driver"
  spec.version       = Ruby::Driver::VERSION
  spec.authors       = ["Manuel Carmona"]
  spec.email         = ["manuel@sourced.tech"]

  spec.summary       = "Driver to parse ruby source files"
  spec.homepage      = "https://github.com/bblfsh/ruby-driver"
  spec.license       = "GNU GENERAL PUBLIC LICENSE Version 3"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  #spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables = ["ruby-driver"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.3.1"

  spec.add_runtime_dependency 'activesupport','>= 5.0.1'
  spec.add_runtime_dependency 'yajl-ruby','>= 1.3.0'

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end