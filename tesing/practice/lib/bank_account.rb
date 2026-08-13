class BankAccount
  def initialize
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def balance
    @balance
  end
end

# Example
account = BankAccount.new

account.deposit(1000)
account.withdraw(250)

puts account.balance
# => 750