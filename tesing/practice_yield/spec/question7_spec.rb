# frozen_string_literal: true

require 'rspec'
require_relative '../lib/question7'

RSpec.describe 'Calculate' do
  describe '#calculate' do
    it 'yielding with a value modification' do
      expect(calculate { |number| number * 2 }).to eq(20)
    end
  end
end
