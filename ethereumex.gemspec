# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ethereumex/version'

Gem::Specification.new do |spec|
  spec.name          = "ethereumex"
  spec.version       = EthereumEx::VERSION
  spec.authors       = ["Shawn Cicoria"]
  spec.email         = ["github@cicoria.com"]

  spec.summary       = %q{Ethereum libraries for Ruby updated}
  spec.description   = %q{Ethereum libraries for ruby programming language updated.}
  spec.homepage      = "https://github.com/ethereumex/ethereum-ruby"
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  puts(lib)
  puts(spec.files)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "bin"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "activesupport"
  spec.add_dependency "digest-sha3", "~> 1.1"
end
