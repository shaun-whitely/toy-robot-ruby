# frozen_string_literal: true

require 'spec_helper'

describe ToyRobot::Commands do
  describe 'parse' do
    it 'parses a PLACE command' do
      expected = described_class::Place.new(1, 1, ToyRobot::Direction::NORTH)
      expect(described_class.parse('PLACE 1,1,NORTH')).to eq(expected)
    end
  end
end
