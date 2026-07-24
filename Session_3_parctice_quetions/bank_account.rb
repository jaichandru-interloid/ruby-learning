class BankAccount
  def initialize(acc_number, holder_name, balance)
    @acc_number = acc_number
    @holder_name = holder_name
    @balance = balance
    @history=[]
  end

  def deposit
    print"Enter the amount to Deposit: "
    amount=gets.chomp.to_i
    @balance+=amount
    @history<< "Deposited Rs.#{amount} | Balance : #{@balance}"
    display
  end

  def withdraw
    print"Enter the amount to withdraw: "
    amount=gets.chomp.to_i
    return unless amount<@balance
    @balance-=amount
    @history<< "Withdrawed Rs.#{amount} | Balance : #{@balance}"
    display
  end

  def display
    puts"Holder Name: #{@holder_name} \nAccount Number: #{@acc_number} \n Balance: #{@balance}"
  end

  def transaction_history
    @history.each do |transaction|
      puts transaction
    end
  end
end

bank_acc=BankAccount.new("xhjf142586368","John",8000)

loop do
  puts"------------MENU---------------"
  puts"1. Deposit"
  puts"2. Withdraw"
  puts"3. Check Balance"
  puts"4. Transaction History"
  puts"5. Exit"

  print"Enter your choice:"
  choice=gets.chomp.to_i

  case choice
  when 1
    bank_acc.deposit
  when 2
    bank_acc.withdraw
  when 3
    bank_acc.display
  when 4
    bank_acc.transaction_history
  when 5
    puts"Thank you...!"
    break
  else
    puts"Invalid selection"
  end
end