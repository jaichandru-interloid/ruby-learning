# frozen_string_literal: true

require 'rspec'
require_relative '../lib/user'

RSpec.describe User do
  let(:name) { 'John' }
  let(:age) { 25 }

  subject(:user) { User.new(name, age) }

  before do
    user
  end

  context 'when the user is an adult' do
    let(:age) { 25 }

    it 'returns true for adult?' do
      expect(user.adult?).to be true
    end
  end

  context 'when the user is a minor' do
    let(:age) { 16 }

    it 'returns false for adult?' do
      expect(user.adult?).to be false
    end
  end
end