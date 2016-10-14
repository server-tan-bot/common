# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'server_tan/core/version'

Gem::Specification.new do |spec|
  spec.name          = 'server_tan-core'
  spec.version       = ServerTan::Core::VERSION
  spec.authors       = ['dotMaiku']
  spec.email         = ['dotMaiku@gmail.com']
  spec.summary       = %q{Core classes and libraries for Server-tan.}
  spec.description   = %q{Classes, libraries, and common logic used by Server-tan.}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exec/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.2.2' # Needed for ActiveSupport.

  spec.add_dependency 'sequel', '~> 4.38'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'factory_girl', '~> 4.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'reek', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.38.0'
  spec.add_development_dependency 'rubocop-checkstyle_formatter'
  spec.add_development_dependency 'simplecov'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'yard'
end
