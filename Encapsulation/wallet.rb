class Wallet
    attr_reader :balance
    def initialize(balance)
        @balance=balance
    end

    def add_money(amount)
        @balance+=amount
        display
    end

    def display
        puts"Your balance: #{@balance}"
    end
end

wal=Wallet.new(5000)
wal.display
print"Enter the amount you want to deposit:"
n=gets.chomp.to_i
wal.add_money(n)
