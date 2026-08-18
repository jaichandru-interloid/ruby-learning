# frozen_string_literal: true

require 'rspec'
require_relative '../lib/question8'

RSpec.describe 'DobuleNumber' do
  describe '#double_numbers' do
    it 'dubleing the number with yield' do
      expect(double_numbers([1, 2, 3]) { |number| number * 2 }).to eq([2, 4, 6])
    end
  end
end
