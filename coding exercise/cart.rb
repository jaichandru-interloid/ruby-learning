print"Enter the number of products in the cart:"
n=gets.chomp.to_i
cart=[]
print"Enter prices:"
n.times do |i|
    cart[i]=gets.chomp.to_i
end
sum=0
cart.each do |i|
    sum+=i
end
puts"Total price in the cart: #{sum}."