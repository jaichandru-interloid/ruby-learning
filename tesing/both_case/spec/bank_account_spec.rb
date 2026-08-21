# frozen_string_literal: true

require 'rspec'
require_relative '../lib/bank_account'

RSpec.describe BankAccount do
  describe '#deposit' do
    context 'deposit amount' do
      let(:bank) { BankAccount.new(0) }
      it 'With a positive amount' do
        bank.deposit(5000)
        expect(bank.balance_check).to eq(5000)
      end

      it 'With the 0 or negative number' do
        expect do
          bank.deposit(0)
        end.to raise_error(ArgumentError, 'Deposit must be positive')
      end
    end
  end

  describe '#withdraw' do
    let(:bank) { BankAccount.new(5000) }

    context 'withdrawing valid amount' do
      it 'with less than balance' do
        bank.withdraw(2500)
        expect(bank.balance_check).to eq(2500)
      end
    end

    context 'raise error' do
      it 'with more than balance' do
        expect do
          bank.withdraw(6000)
        end.to raise_error(BalanceError, 'Insufficient balance')
      end

      it 'With zero' do
        expect do
          bank.withdraw(0)
        end.to raise_error(ArgumentError, 'Withdraw must be positive')
      end

      it 'with negative' do
        expect do
          bank.withdraw(-588)
        end.to raise_error(ArgumentError, 'Withdraw must be positive')
      end
    end
  end

  describe '#balance_check' do
    let(:bank) { BankAccount.new(5000) }
    it 'checking the balance' do
      expect(bank.balance_check).to eq(5000)
    end
  end
end
