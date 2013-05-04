# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hategra/version'

Gem::Specification.new do |spec|
  spec.name          = "hategra"
  spec.version       = Hategra::VERSION
  spec.authors       = ["asonas"]
  spec.email         = ["hzw1258@gmail.com"]
  spec.description   = %q{no discription}
  spec.summary       = %q{no summary}
  spec.homepage      = "https://github.com/asonas/hategra"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
