print"Enter the Maximum number:"
n=gets.chomp.to_i
sum=0
for i in 1..n
    sum+=i
end
puts"Sum of the numbers : #{sum}"