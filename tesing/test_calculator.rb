# frozen_string_literal: true

require 'rspec'
require './calculator'

RSpec.describe Calculator do
  it 'add two numbers' do
    calc = Calculator.new

    expect(calc.add(10, 12)).to eq(22)
  end
end
