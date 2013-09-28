require 'spec_helper'

module Golr
  describe GameReader do
    describe "#from_string" do
      it "should read a multiline description that uses 'o' for active cells" do
        multi_line_description = <<-EOS
          |        |
          |  o     |
          | o   o  |
          |   o    |
          |     o  |
          |o      o|
          |        |
        EOS
        game = GameReader.from_string(multi_line_description)

        game.columns.should == 8
        game.rows.should == 7

        game.alive?(Key.key(1,1)).should be_false
        game.alive?(Key.key(3,2)).should be_true
        game.alive?(Key.key(2,3)).should be_true
        game.alive?(Key.key(4,4)).should be_true
        game.alive?(Key.key(4,5)).should be_false
        game.alive?(Key.key(8,6)).should be_true
        game.alive?(Key.key(7,7)).should be_false
      end
    end
  end
end