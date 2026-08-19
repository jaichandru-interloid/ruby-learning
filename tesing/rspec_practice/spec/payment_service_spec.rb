# frozen_string_literal: true

require 'rspec'
require_relative '../lib/payment_service'

RSpec.describe Order do
  let(:gateway) { double('PaymentGateway') }
  let(:order) { Order.new(gateway) }

  describe '#place_order' do
    it 'returns the stubbed payment response' do
      allow(gateway)
        .to receive(:charge)
        .and_return('Payment successful')

      expect(order.place_order(500)).to eq('Payment successful')
    end
  end
end