def removeing(product,cart)
    cart.delete(product)
    return cart
end

print"Enter the total number of the products wnat to add in the cart:"
n=gets.chomp.to_i
cart=[]
n.times do |i|
    print"Enter the product name:"
    cart[i]=gets.chomp

end
puts"Products in the cart:"
puts cart
print"Enter the product name to remove from the cart:"
removed_product=gets.chomp
puts"The product list of the removing: #{removeing(removed_product,cart)}"