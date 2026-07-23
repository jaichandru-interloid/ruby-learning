class Account
    attr_reader :balance

    def initialize
        @balance = 0
    end

    def deposit(amount)
        @balance += amount
    end
end

class SavingsAccount < Account
    def initialize(interest_rate)
        super()
        @interest_rate = interest_rate
    end

    def deposit(amount)
        interest = amount * @interest_rate / 100
        @balance += amount + interest
    end
end

saccount = SavingsAccount.new(5)
saccount.deposit(5000)

puts saccount.balance