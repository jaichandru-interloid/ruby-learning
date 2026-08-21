# frozen_string_literal: true

class BalanceError < StandardError
end

class BankAccount
  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    raise ArgumentError, 'Deposit must be positive' unless amount.positive?

    @balance += amount
  end

  def withdraw(amount)
    raise ArgumentError, 'Withdraw must be positive' unless amount.positive?
    raise BalanceError, 'Insufficient balance' unless @balance > amount

    @balance -= amount
  end

  def balance_check
    @balance
  end

  def transfer_to(other_account, amount)
    withdraw(amount)
    other_account.deposit(amount)
  end
end
