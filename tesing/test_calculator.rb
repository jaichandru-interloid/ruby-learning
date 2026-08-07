# frozen_string_literal: true

# # frozen_string_literal: true

# require 'rspec'
# require './calculator'

# RSpec.describe Calculator do
#   it 'add two numbers' do
#     calc = Calculator.new

#     expect(calc.add(10, 12)).to eq(22)
#   end
# end

# require_relative 'calculator'

# RSpec.describe Calculator do
#   let(:calculator) { Calculator.new }

#   describe '#divide' do
#     context 'when divisor is not zero' do
#       it 'returns the quotient' do
#         expect(calculator.divide(10, 2)).to eq(5)
#       end
#     end

#     context 'when divisor is zero' do
#       it 'raises ZeroDivisionError' do
#         expect { calculator.divide(10, 0) }.to raise_error(ZeroDivisionError)
#       end
#     end
#   end
# end

#around example program
require_relative "calculator"

RSpec.describe Calculator do
  let(:calculator) { Calculator.new }

  around do |example|
    puts "Starting Test"

    example.run

    puts "Ending Test"
  end

  it "adds numbers" do
    puts "Testing...!"
    expect(calculator.add(10, 20)).to eq(30)
  end
end