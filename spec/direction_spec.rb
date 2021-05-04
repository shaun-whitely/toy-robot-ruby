require 'spec_helper'

module ToyRobot
  describe Direction do
    describe 'parse' do
      it 'parses NORTH' do
        expect(Direction.parse('NORTH')).to eq(Direction::NORTH)
      end

      it 'parses EAST' do
        expect(Direction.parse('EAST')).to eq(Direction::EAST)
      end

      it 'parses SOUTH' do
        expect(Direction.parse('SOUTH')).to eq(Direction::SOUTH)
      end

      it 'parses WEST' do
        expect(Direction.parse('WEST')).to eq(Direction::WEST)
      end
    end

    describe 'right' do
      it 'turns right from NORTH' do
        expect(Direction.right(Direction::NORTH)).to eq(Direction::EAST)
      end

      it 'turns right from EAST' do
        expect(Direction.right(Direction::EAST)).to eq(Direction::SOUTH)
      end

      it 'turns right from SOUTH' do
        expect(Direction.right(Direction::SOUTH)).to eq(Direction::WEST)
      end

      it 'turns right from WEST' do
        expect(Direction.right(Direction::WEST)).to eq(Direction::NORTH)
      end
    end
  end
end
