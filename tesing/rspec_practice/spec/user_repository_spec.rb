# frozen_string_literal: true

require 'rspec'
require_relative '../lib/user_repository'

RSpec.describe UserService do
  describe '#find_user' do
    it 'find the user using User.find' do
      user = class_double(User)

      allow(user).to receive(:find).with(10).and_return('User 10')
      stub_const('User', user)

      service = UserService.new

      result = service.find_user(10)

      expect(result).to eq('User 10')
      expect(user).to have_received(:find).with(10)
    end
  end
end
