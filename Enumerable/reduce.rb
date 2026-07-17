print"Enter the count of numbers:"
n=gets.chomp.to_i
numbers=[]
n.times do |i|
    print "Enter the number:"
    numbers[i]=gets.chomp.to_i
end
puts "The numbers are: #{numbers}"
sum=numbers.reduce(0){|sum, i| sum+i}
puts sum