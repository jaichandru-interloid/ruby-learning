# frozen_string_literal: true

require 'rspec'
require_relative '../lib/question5'

RSpec.describe 'EachNumber' do
  describe '#each_number' do
    it 'check the cpount of the yield' do
      expect { |block| each_number([10, 20, 30], &block) }.to yield_successive_args(10, 20, 30)
    end
  end
end
