# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'translator/version'

Gem::Specification.new do |spec|
  spec.name          = "translator-locales"
  spec.version       = Translator::VERSION
  spec.authors       = ["lokesh jain"]
  spec.email         = ["lokeshjain2008@gmail.com"]
  spec.summary       = %q{help to create translation files quick using yandex. }
  spec.description   = %q{Gem will do quick translation from one language to other language. This may not be 100% correct. As the quality depends on third party. }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'xkeys'
  spec.add_runtime_dependency 'typhoeus'
  spec.add_runtime_dependency 'json'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

end
