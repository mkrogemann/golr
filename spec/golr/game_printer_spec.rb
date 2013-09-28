require 'spec_helper'

module Golr
  describe GamePrinter do
    describe '#print' do
      it 'produces expected output in given io object (String)' do
        game = Game.new(9, 6, ["2_4", "3_5", "1_3", "5_5"])
        io = StringIO.new
        GamePrinter.print(game, io)
        io.string.should == "\n|         |\n|         |\n|o        |\n| o       |\n|  o o    |\n|         |\n\n"
      end
    end
  end
end