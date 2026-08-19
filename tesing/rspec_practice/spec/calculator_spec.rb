# frozen_string_literal: true

require 'rspec'
require_relative '../lib/calculator'

RSpec.describe Calculator do
  let(:calc) { Calculator.new }
  describe '#add' do
    it 'both positive values' do
      expect(calc.add(2, 3)).to eq(5)
    end

    it 'Check with a negative' do
      expect(calc.add(2, -3)).to eq(-1)
    end
  end

  describe '#subract' do
    it 'both positive values' do
      expect(calc.subtract(2, 3)).to eq(-1)
    end

    it 'Check with a negative' do
      expect(calc.subtract(2, -3)).to eq(5)
    end
  end

  describe '#multiply' do
    it 'both positive values' do
      expect(calc.multiply(2, 3)).to eq(6)
    end

    it 'Check with a negative' do
      expect(calc.multiply(2, -3)).to eq(-6)
    end

    it 'Check with a zero' do
      expect(calc.multiply(2, 0)).to eq(0)
    end
  end

  describe '#divide' do
    it 'both positive values' do
      expect(calc.divide(9, 3)).to eq(3)
    end

    it 'Check with a negative' do
      expect(calc.divide(9, -3)).to eq(-3)
    end

    it 'divided by zero' do
      expect { calc.divide(15, 0) }.to raise_error(ZeroDivisionError)
    end

    it 'divide zero' do
      expect(calc.divide(0, 100_000)).to eq(0)
    end
  end
end
