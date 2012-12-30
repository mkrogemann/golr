# -*- encoding: utf-8 -*-
require File.expand_path('../lib/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Markus Krogemann"]
  gem.email         = ["markus@krogemann.de"]
  gem.description   = %q{Exposes methods to initialize and evolve a grid (aka 'board') on which Conway's Game of Life takes place}
  gem.summary       = %q{Conway's Game of Life in a Ruby Gem}
  gem.homepage      = "https://github.com/mkrogemann/gol-gdcr2012-ruby"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "Gol"
  gem.require_paths = ["lib"]
  gem.version       = Gol::VERSION
  gem.add_development_dependency('rspec', '~> 2.12.0')
end