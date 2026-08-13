# frozen_string_literal: true

require 'rspec'
require_relative '../lib/major'

RSpec.describe User do
  describe '#major' do
    context 'when user is an adult' do
      it 'Checks the user is Major' do
        user = User.new(32)
        expect(user.adult?).to eq(true)
      end
    end

    context 'when user is a minor' do
      it 'Check the user is minor' do
        user = User.new(12)
        expect(user.adult?).to eq(false)
      end
    end
  end
end
