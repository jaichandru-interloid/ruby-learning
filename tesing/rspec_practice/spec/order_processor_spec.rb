# frozen_string_literal: true

require 'rspec'
require_relative '../lib/order_processor'

RSpec.describe OrderProcessor do
  describe '#send_confirmation' do
    it 'sending the comnfirmation mail' do
      email_service = double('EmailService')

      expect(email_service).to receive(:send_confirmation).with('test@example.com')

      processor = OrderProcessor.new(email_service)
      result = processor.process('test@example.com')

      expect(result).to eq('Order processed')
    end
  end
end
