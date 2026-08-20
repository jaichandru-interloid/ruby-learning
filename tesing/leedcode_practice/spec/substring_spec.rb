# frozen_string_literal: true

require 'rspec'
require_relative '../lib/substring'

RSpec.describe 'length_of_longest_substring' do
  describe '#length_of_longest_substring' do
    it 'check with the string' do
      expect(length_of_longest_substring('abcabcbb')).to eq(3)
    end

    it 'check with the string' do
      expect(length_of_longest_substring('pwwkew')).to eq(3)
    end
  end
end
