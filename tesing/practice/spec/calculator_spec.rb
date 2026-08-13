# frozen_string_literal: true

require 'rspec'
require_relative '../lib/calculator'

RSpec.describe Calculator do
  let(:calc) do
    Calculator.new
  end

  describe '#add' do
    it 'adds two numbers' do
      expect(calc.add(2, 3)).to eq(5)
    end
  end

  describe '#subract' do
    it 'subtracts two numbers' do
      expect(calc.subract(23, 10)).to eq(13)
    end
  end

  describe 'error' do
    it 'raises ZeroDivisionError' do
      expect {calc.divide(10/0)}.to raise_error(ZeroDivisionError)
    end
  end
end