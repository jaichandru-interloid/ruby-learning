class BankAccount
    def initialize(name, balance)
        @name=name
        @balance=balance
    end

    def compare_balance(other_account)
        if balance>other_account.balance
            puts"#{@name} has a higher balance."
        elsif balance<other_account.balance
            puts"#{other_account.name} has a higher balance."
        else
            puts"Both accounts have the same balance."
        end
    end

    def name
        @name
    end

    protected

    def balance
        @balance
    end
end

account1=BankAccount.new("Holder1", 5000)
account2=BankAccount.new("Holder2", 7000)

account1.compare_balance(account2)