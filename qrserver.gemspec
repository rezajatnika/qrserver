# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qrserver/version'

Gem::Specification.new do |spec|
  spec.name          = "qrserver"
  spec.version       = Qrserver::VERSION
  spec.authors       = ["Reza Jatnika"]
  spec.email         = ["rezajatnika@gmail.com"]

  spec.summary       = %q{Wrapper for QR Code API from http://goqr.me.}
  spec.description   = %q{Wrapper for QR Code API from http://goqr.me.}
  spec.homepage      = "https://github.com/rezajatnika/qrserver"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Dependency
  spec.add_runtime_dependency 'httparty'

  # Development
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake",    "~> 10.0"

  # Test
  spec.add_development_dependency "minitest-reporters"
end
