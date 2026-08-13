# frozen_string_literal: true

require 'minitest/autorun'
require_relative '../lib/bank_account'

class BankAccountTest < Minitest::Test
  def setup
    @account = BankAccount.new
  end

  def test_deposit_amount
    @account.deposit(2000)
    assert_equal 2000, @account.balance
  end

  def test_withdraw
    @account.deposit(3000)
    assert_equal 1500, @account.withdraw(1500)
  end

  def test_balance
    @account.deposit(3000)
    assert_equal 3000, @account.balance
  end

  def test_error
    assert_raises(TypeError) do
      @account.deposit('1000')
    end
  end
end
