# frozen_string_literal: true

require 'rspec'

numbers = [1, 2, 3, 4, 5]

RSpec.describe 'Matchers' do
  it 'checks whether the value is included' do
    expect(numbers.include?(4)).to be true
  end

  it 'checks the exact values' do
    expect(numbers).to contain_exactly(5, 2, 3, 4, 1)
  end

  it 'checks the matching array' do
    expect(numbers).to match_array([5, 2, 3, 4, 1])
  end

  it 'Check all the value is greater than 0' do
    expect(numbers).to all(be.positive?)
  end
end
