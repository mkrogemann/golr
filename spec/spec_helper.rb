if ENV['COVERAGE'] == 'true' && RUBY_VERSION != '1.8.7'
  require 'simplecov'
end

if ENV['TRAVIS'] == 'true'  && RUBY_VERSION != '1.8.7'
  require 'coveralls'
  Coveralls.wear!
end

RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
  config.expect_with :rspec do |c|
    c.syntax = :should
  end
end

require 'golr'
