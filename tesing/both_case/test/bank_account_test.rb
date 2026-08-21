require "minitest/autorun"
require_relative "../lib/bank_account"

class BankAccountTest<Minitest::Test
  def deposit_test
    @bank=BankAccount.new(0)
    @bank.deposit(5000)
    assert 5000,@bank.balance_check
  end
end