require 'spec_helper'

module Golr
  describe Key do
    describe '#key' do
      it 'arranges two given values into a key (Array)' do
        Key.key(1,3).should == [1,3]
      end
    end
  end
end