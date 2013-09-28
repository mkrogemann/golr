require 'spec_helper'
require 'golr/game'

module Golr
  describe Game do
    describe '#alive?' do
      it "a new Game returns dead cell for any coordinates within its grid boundaries" do
        key = Key.key(rand(5) + 1, rand(5) + 1)
        game = Game.new(5,5)

        game.alive?(key).should be_false
      end

      it "a new Game accepts and returns a living cell at any coordinates within its grid boundaries" do
        key = Key.key(rand(5) + 1, rand(5) + 1)
        game = Game.new(5,5, [key])

        game.alive?(key).should be_true
      end
    end

    describe '#neighboring_keys' do
      it "any Game returns 8 neighboring cell coordinates for any given cell coordinate" do
        key = Key.key(rand(5) + 1, rand(5) + 1)
        game = Game.new(5,5)

        game.send(:neighboring_keys, key).size.should == 8
      end
    end

    describe '#living_neighbors' do
      it "a new Game with one living cell returns zero living cells around that one living cell" do
        x,y = rand(5) + 1, rand(5) + 1
        key = Key.key(x, y)

        game = Game.new(5,5, [key])

        game.send(:living_neighbors, key).should == 0
      end

      it "a new Game with two adjacent living cells returns a count of one living cell around the initial living cell" do
        game = Game.new(5,5, ["2_3", "2_4"])

        game.send(:living_neighbors, Key.key(2,3)).should == 1
      end

      it "a new Game with three adjacent living cells returns a count of two living cells around the initial living cell" do
        game = Game.new(5,5, ["2_3", "2_4", "3_3"])

        game.send(:living_neighbors, Key.key(2,3)).should == 2
      end
    end

    describe '#evolve' do
      it "computes a 5-cell glider" do
        game = Game.new(8,8, ["1_2","2_3","3_1","3_2","3_3"])
        initial_grid = game.grid
        # run through 4 iterations and check for down-right-shifted glider
        4.times.each { game.evolve }
        shifted_glider = game.grid

        shifted_glider[Key.key(1,2)].should be_false
        shifted_glider[Key.key(3,1)].should be_false
        shifted_glider[Key.key(3,2)].should be_false
        shifted_glider[Key.key(3,3)].should be_false

        shifted_glider[Key.key(2,3)].should be_true
        shifted_glider[Key.key(3,4)].should be_true
        shifted_glider[Key.key(4,2)].should be_true
        shifted_glider[Key.key(4,3)].should be_true
        shifted_glider[Key.key(4,4)].should be_true
      end
    end

    describe '#wrap_key_around_grid_edges' do
      it "adjusts x and y if required" do
        game = Game.new(5,5)

        game.send(:wrap_key_around_grid_edges, Key.key(-1,5)).should == Key.key(5,5)
        game.send(:wrap_key_around_grid_edges, Key.key(0,0)).should == Key.key(5,5)
        game.send(:wrap_key_around_grid_edges, Key.key(6,5)).should == Key.key(1,5)
        game.send(:wrap_key_around_grid_edges, Key.key(3,6)).should == Key.key(3,1)
      end
    end
  end
end