tax_calculator=->(income) do
    if income<=250000
        tax=0
    elsif income<=500000
        tax=income/10
    elsif income<=1000000
        tax=income/20
    else
        tax=income/30
    end
end

print "Enter your annual income: "
income=gets.to_f
tax=tax_calculator.call(income)

puts "Income: ₹#{income}"
puts "Tax: ₹#{tax}"