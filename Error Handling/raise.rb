class InsufficientFundError < StandardError
end

def withdraw (balance, amount)
  if amount > balance
    raise InsufficientFundError, "Not enough Money..!"
  end

  balance - amount
end

begin
  puts withdraw(100, 500)
rescue InsufficientFundError => e
  puts e.message
end