# frozen_string_literal: true

require 'rspec'
require_relative '../lib/bank_account'

RSpec.describe BankAccount do
  let(:initial_balance) { 10_000 }
  subject(:account) { BankAccount.new(initial_balance) }
  before do
    account
  end
  describe '#deposite' do
    it 'deposit amount' do
      expect(account.deposit(500)).to eq(initial_balance + 500)
    end
  end

  describe '#withdraw' do
    it 'sufficient balance' do
      expect(account.withdraw(1500)).to eq(8500)
    end

    it 'Insufficient balance' do
      expect { account.withdraw(11_000) }.to raise_error('Insufficient balance')
    end
  end
end
