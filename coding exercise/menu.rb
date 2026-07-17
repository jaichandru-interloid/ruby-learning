puts"-----MENU--------"
puts"1. ADD"
puts"2. SUBRACT"
puts"3. MULTIPLY"
puts"4. DIVIDE"
puts"5. MODULO"

print"Enter your choice:"
choice=gets.chomp.to_i
print"Enter the first number:"
n1=gets.chomp.to_i
print"Enter the second number:"
n2=gets.chomp.to_i
case choice
when 1
    puts"#{n1}+#{n2}=#{n1+n2}"
when 2
    puts"#{n1}-#{n2}=#{n1-n2}"
when 3
    puts"#{n1}x#{n2}=#{n18n2}"
when 4
    puts"#{n1}/#{n2}=#{n1/n2}"
when 5
    puts"#{n1}%#{n2}=#{n1%n2}"
else
    puts"Invalid input"
end