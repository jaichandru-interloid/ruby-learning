print"Enter the age: "
age=gets.chomp.to_i
print"Enter the ticket price:"
print=gets.chomp.to_i
if (age<=12 & age>0)or(age>60):
    puts"The price is half: #{price/2}"
else
    puts"The price is #{price}"
end 