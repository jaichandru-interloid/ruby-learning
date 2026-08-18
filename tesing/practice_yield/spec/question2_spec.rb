# frozen_string_literal: true

require 'rspec'
require_relative '../lib/question2'

RSpec.describe 'YieldControl' do
  describe '#yielscontrol' do
    it 'Checks the yield control' do
      expect { |block| say_hello(&block) }.to yield_control
    end
  end
end
