print"Enter the number of the price to add : "
n=gets.chomp.to_i
cart=[]
print "Enter the prices : "
n.times do |i|
  cart[i] = gets.chomp.to_i
end

total=cart.map{ |price| price}.sum
tax = total*0.10
final_price=total+tax

puts "Total price : #{total}"
puts "Tax : #{tax}"
puts "Final price : #{final_price}"