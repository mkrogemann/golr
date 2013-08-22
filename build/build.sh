#!/bin/bash -l

# this script is here to be used by Go and similar CI/CD products. It may at some point be replaced by a Rakefile.

rvm use 1.9.3@golr --create --fuzzy
bundle
[ -d rspec ] && rm -rf rspec
COVERAGE=true bundle update exec rspec --out rspec/rspec.xml --format html --out rspec/rspec.html

[ -d cucumber ] && rm -rf cucumber
mkdir cucumber
COVERAGE=true bundle update exec cucumber --format html --out cucumber/cucumber.html --no-source

exit $?
