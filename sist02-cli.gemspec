# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sist02/cli/version'

Gem::Specification.new do |spec|
  spec.name          = "sist02-cli"
  spec.version       = Sist02::Cli::VERSION
  spec.authors       = ["himkt"]
  spec.email         = ["himkt@klis.tsukuba.ac.jp"]

  spec.summary       = %q{gem for sist02 in console}
  spec.description   = %q{this gem is to make references with sist02 in console}
  spec.homepage      = "https://github.com/himkt/sist02-cli"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "thor"
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
