class Bank
  def withdraw(amount)
    raise "Insufficient balance" if amount > 1000
  end
end