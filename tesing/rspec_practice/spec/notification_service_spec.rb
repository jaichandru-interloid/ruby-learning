# frozen_string_literal: true

require 'rspec'
require_relative '../lib/notification_service'

RSpec.describe UserService do
  let(:notification_service) { double('NotificationService') }
  let(:user_service) { UserService.new(notification_service) }

  describe '#register' do
    it 'send a welcome mail' do
      allow(notification_service).to receive(:send_email)

      user_service.register('test@example.com')

      expect(notification_service).to have_received(:send_email).with(
        'test@example.com',
        'Welcome to our application!'
      )
    end

    it 'return user registered' do
      allow(notification_service).to receive(:send_email)
      expect(user_service.register('test@example.com')).to eq('User registered')
    end
  end
end
