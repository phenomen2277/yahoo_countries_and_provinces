# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yahoo_countries_and_provinces/version'

Gem::Specification.new do |spec|
  spec.name          = "yahoo_countries_and_provinces"
  spec.version       = YahooCountriesAndProvinces::VERSION
  spec.authors       = ["Jone Samra"]
  spec.email         = ["jonemob@gmail.com"]
  spec.summary       = %q{Generates a list of all the countries and provinces using Yahoo's YQL.}
  spec.description   = %q{Generates a list of all the countries and provinces using Yahoo's YQL.}
  spec.homepage      = "https://github.com/phenomen2277/yahoo_countries_and_provinces"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.0.0"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
