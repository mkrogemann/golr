Changelog
=========

Version 0.5.0 - unreleased
-------------

* improve readability of Game class: use 'key' instead of (x,y) in all method signatures
* add cucumber feature for Spaceships
* add example file for Lightweight spaceship (LWSS)
* add borders to output of game_printer
* make methods that are not part of public API private in game.rb

Version 0.4.2
-------------

* add more examples (oscillators, ...), using cucumber
* remove set_alive method
* add runner and an example file for game setup (glider)
* bugfix: columns were incorrectly calculated in GameReader
* bugfix: off-by-one error in GameReader
* bugfix: row/column confusion in GamePrinter

Version 0.4.1
-------------

* bugfix: expose relevant classes by requiring them

Version 0.4.0
-------------

* rename gem to golr
* rename github repo to golr
* add simplecov to track coverage
* extract Key class
* introduce GameReader to simplify acceptance test setup
* first published version (rubygems.org)

Version 0.3.0
-------------

* there is now an rspec matcher for grids (cell states)
* simple initialization via Array of Strings (coordinates of living cells)
* API smoothing (evolve expects no args and returns game itself)

Version 0.2.0
-------------

* Gol is now a Ruby Gem

Version 0.1.0
-------------

* Initial version, initiated at Global Day of CodeRetreat then polished and tagged a couple of weeks after the event
