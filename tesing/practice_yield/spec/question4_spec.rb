# frozen_string_literal: true

require 'rspec'
require_relative '../lib/question4'

RSpec.describe 'YieldSuccessArgs' do
  describe '#numbers' do
    it 'checking the yield case working' do
      expect { |block| numbers(&block) }.to yield_successive_args(1, 2, 3)
    end
  end
end
