# -*- encoding: utf-8 -*-
require File.expand_path('../lib/golr/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Markus Krogemann"]
  gem.email         = ["markus@krogemann.de"]
  gem.description   = %q{Offers methods to initialize and evolve a grid of cells, implementing the rules of Conway's Game of Life}
  gem.summary       = %q{Conway's Game of Life}
  gem.homepage      = "https://github.com/mkrogemann/golr"
  gem.license       = 'MIT'

  gem.files         = Dir['lib/**/*.rb']
  gem.executables   << 'golr'
  gem.test_files    = []
  gem.name          = "golr"
  gem.require_paths = ["lib"]
  gem.version       = Golr::VERSION
  gem.add_development_dependency('rspec', '~> 3.0.0')
  gem.add_development_dependency('cucumber', '~> 1.3.16')
  gem.add_development_dependency('simplecov', '~> 0.8.2')
  gem.add_development_dependency('metric_fu', '~> 4.4.4') unless ENV['TRAVIS'] == 'true'
end
