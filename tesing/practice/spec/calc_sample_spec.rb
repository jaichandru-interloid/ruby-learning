# frozen_string_literal: true

require 'rspec'
require_relative '../lib/calc_sample'

RSpec.describe Calculator do
  let(:calc) { Calculator.new }

  describe '#add' do
    context 'when both positive' do
      it 'adds two positive values' do
        expect(calc.add(23, 23)).to eq(46)
      end
    end

    context 'when one is positive and another is negative' do
      it 'adds a positive and a negative number' do
        expect(calc.add(23, -13)).to eq(10)
      end
    end

    context 'when one is positive and another is negative' do
      it 'adds a positive and a negative number' do
        expect(calc.add(23, -13)).not_to eql(10.0)
      end
    end
  end
end