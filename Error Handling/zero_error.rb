def division(number1, number2)
  if number2 == 0
    raise ZeroDivisionError, "Not divide by zero..!"
  end
  result = number1 / number2
  puts "Result : #{result}"
  
end

print "Enter first number : "
num1 = gets.chomp.to_i
print "Enter the second number : "
num2 = gets.chomp.to_i
begin 
  division(num1, num2)
rescue ZeroDivisionError => e
  puts e.message
end