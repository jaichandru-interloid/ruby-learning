# frozen_string_literal: true

require 'rspec'
require_relative '../lib/nested'

RSpec.describe Calculator do
  let(:calc) do
    Calculator.new
  end

  describe '#add positive' do
    it 'adds to positive numbers' do
      expect(calc.add(12, 12)).to eq(24)
    end
  end

  describe '#add a negative' do
    it 'add a negative  number' do
      expect(calc.add(18, -9)).to eq(9)
    end
  end

  describe '#valid numbers' do
    it 'Divid with valid numbers' do
      expect(calc.divide(18, 9)).to eq(2)
    end
  end

  describe '#ZeroDivisionError' do
    it 'raises the Zero division error' do
      expect { calc.divide(18, 0) }.to raise_error(ZeroDivisionError)
    end
  end
end
