require "rspec"
require_relative "../lib/bank_account"

RSpec.describe BankAccount do
  let(:account) do
    BankAccount.new
  end

  describe "#deposit" do
    it "deposit the amount to the account" do
      expect(account.deposit(2000)).to eq(2000)
    end
  end

  describe "#withdraw" do
    it "withdraw the amount from the account" do
      account.deposit(3000)
      expect(account.withdraw(1500)).to eq(1500)
    end
  end

  describe "#balance" do
    it "checking the balance from the account" do
      account.deposit(5000)
      expect(account.balance).to eq(5000)
    end
  end

  describe "#ArguementError" do
    it "it will check the arguement error" do
      expect{account.deposit("1000")}.to raise_error(TypeError)
    end
  end
end