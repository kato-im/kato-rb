# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kato/version'

Gem::Specification.new do |spec|
  spec.name          = "kato-rb"
  spec.version       = Kato::VERSION
  spec.authors       = ["JLarky"]
  spec.email         = ["jlarky@gmail.com"]
  spec.description   = %q{Ruby library to post messages to kato.im room}
  spec.summary       = %q{Ruby library to post messages to kato.im room}
  spec.homepage      = "https://github.com/kato-im/kato-rb"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
