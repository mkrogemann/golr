require 'spec_helper'

module Golr
  describe Rules do
    describe '#evaluate' do
      it 'returns true if living neighbors equals three' do
        Rules.new.evaluate(3).should be_true
      end

      it 'returns true if cell is alive and living neighbors equals two' do
        Rules.new.evaluate(2, true).should be_true
      end

      it 'returns true if cell is alive and living neighbors equals three' do
        Rules.new.evaluate(3, true).should be_true
      end

      it 'returns false if cell is dead and living neighbors equals two' do
        Rules.new.evaluate(2, false).should be_false
      end

      it 'returns true if cell is dead and living neighbors equals three' do
        Rules.new.evaluate(3, false).should be_true
      end

      it 'returns false if cell is alive and living neighbors equals one' do
        Rules.new.evaluate(1, true).should be_false
      end
    end
  end
end