print"Enter first number: "
num1=gets.chomp.to_i
print"Enter second number: "
num2=gets.chomp.to_i
print"Enter the third number: "
num3=gets.chomp.to_i
if num1>num2 and num1>num3
    puts"Greatest number is #{num1}."
elsif num2>num1 and num2>num3
    puts"Greatest number is #{num2}."
else
    puts"Greatest number is #{num3}."
end