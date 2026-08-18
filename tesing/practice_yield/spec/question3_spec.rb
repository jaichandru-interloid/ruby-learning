# frozen_string_literal: true

require 'rspec'
require_relative '../lib/question3'

RSpec.describe 'MultipleArgs' do
  describe '#user_details' do
    it 'check that method yields more than 1 arguemnet' do
      expect { |block| user_details(&block) }.to yield_with_args('John', 25)
    end
  end
end
