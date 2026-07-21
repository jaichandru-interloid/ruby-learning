bonus_calculator=->(salary,rating) do
    case rating
    when "A"
        bonus=salary/15
    when "B"
        bonus=salary/10
    when "C"
        bonus=salary/5
    else
        bonus=0
    end
end

print"Enter the salary:"
salary=gets.chomp.to_i
print"Enter the rating:"
rating=gets.chomp.upcase

bonus=bonus_calculator.call(salary,rating)

puts"Your salary: #{salary}"
puts"Your rating: #{rating}"
puts"Your bonus : #{bonus}"