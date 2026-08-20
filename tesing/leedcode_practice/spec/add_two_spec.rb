# frozen_string_literal: true

require 'rspec'
require_relative '../lib/add_two'

RSpec.describe 'two_sum' do
  describe '#positive cae' do
    it 'checking with the values' do
      expect(two_sum([2, 7, 4, 5], 9)).to eq([0,1]) 
    end

    it 'checking with the another array values' do
      expect(two_sum([3, 2, 4], 6)).to eq([1, 2])
    end
  end

  describe "#neagative case" do
    it "with no combinations" do
      expect(two_sum([1,5,6,9],9)).to eq(nil)
    end
  end
end
