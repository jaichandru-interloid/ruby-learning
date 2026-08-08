# frozen_string_literal: true
require_relative "exception"

describe '#divide' do
  it 'divides two numbers' do
    calculator = Calculator.new

    expect(calculator.divide(10, 2)).to eq(5)
  end

  it 'raises an error when dividing by zero' do
    calculator = Calculator.new

    expect do
      calculator.divide(10, 0)
    end.to raise_error(ArgumentError, 'Cannot divide by zero')
  end
end
