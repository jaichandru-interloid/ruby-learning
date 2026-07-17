print"Enter the first number:"
num1=gets.chomp.to_i

print"Enter the second number:"
num2=gets.chomp.to_i

print"Enter the third number:"
num3=gets.chomp.to_i

if num1>num2 && num1>num3
    puts "Largest number is #{num1}"
elsif  num2>num1 && num2>num3
    puts "Largest number is #{num2}"
else
    puts "Largest number is #{num3}"
end