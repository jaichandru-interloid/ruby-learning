# frozen_string_literal: true

require 'rspec'
require_relative '../lib/add_array'

RSpec.describe 'AddArray' do
  describe '#add_two_numbers' do
    it 'add the numbers' do
      expect(add_two_numbers([2, 4, 3], [5, 6, 4])).to eq([7, 0, 8])
    end

    it 'add the zeros' do
      expect(add_two_numbers([0], [0])).to eq([0])
    end
  end
end
