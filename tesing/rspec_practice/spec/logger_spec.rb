# frozen_string_literal: true

require 'rspec'
require_relative '../lib/logger'

RSpec.describe UserService do
  describe '#create_user' do
    it 'Crerating the new user' do
      logger = spy(logger)
      service = UserService.new(logger)
      result = service.create_user('John')

      expect(logger).to have_received(:info).with('Creating user: John')
      expect(result).to eq('User created')
    end
  end
end
