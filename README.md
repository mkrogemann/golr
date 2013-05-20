golr
====

[![Build Status](https://travis-ci.org/mkrogemann/golr.png)](https://travis-ci.org/mkrogemann/golr)
[![Code Climate](https://codeclimate.com/github/mkrogemann/golr.png)](https://codeclimate.com/github/mkrogemann/golr)
[![Coverage Status](https://coveralls.io/repos/mkrogemann/golr/badge.png?branch=master)](https://coveralls.io/r/mkrogemann/golr)
[![Dependency Status](https://gemnasium.com/mkrogemann/golr.png)](https://gemnasium.com/mkrogemann/golr)
[![Gem Version](https://badge.fury.io/rb/golr.png)](http://badge.fury.io/rb/golr)

Ruby implementation of [Conway's Game of Life](http://en.wikipedia.org/wiki/Conway%27s_Game_of_Life) initiated at Global Day of Coderetreat 2012 Berlin

Installation
------------

In case you do not use a Ruby version manager such as [RVM](https://github.com/wayneeseguin/rvm) or [rbenv](https://github.com/sstephenson/rbenv), the installation will require admin rights and using 'sudo' to install it.

The gem can be installed in the usual ways. Either let bundler take care of it and add to your Gemfile like this:

    gem 'golr'

Or install it directly from your command line

    gem install golr

Usage
-----

An executable ships with this gem, it is called 'golr'.

You can run Golr by specifying a file that contains the initial state of the game. Please find an example for such a file in examples/glider.

To evolve the game from an initial state given in 'game-file' for e.g. 5 generations, call the executable like this:

    golr <game-file> -g 5

So for the examples contained in this repo, you could run

    golr examples/glider -g 500

or

    golr examples/lwss -g300

another nice example is the "Pulsar"

	golr examples/pulsar

If you do not specify a number of generations, its value will default to 100.

Find out more about the options of the 'golr' script by calling

    golr -h


Dependencies / Ruby versions
----------------------------

The gem has no runtime dependencies. It has been developed in Ruby 1.9.3 and is being continuously integrated in Ruby 2.0.0, 1.9.3 and 1.8.7.

What's next?
------------

- document setup and validation of grid (gamereader/gameprinter/game)
- Visualization (ncurses, macruby)
- alternative game rules
- Performance
