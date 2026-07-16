products={}
print"Enter the total number of products:"
n=gets.chomp.to_i
n.times do |i|
    print"Enter Product:"
    key=gets.chomp
    print"Enter Price:"
    products[key]=gets.chomp
end
puts "products: #{products}"
print"Enter the product name to check if it exists:"
name=gets.chomp
if products.key?(name)
    puts "The product #{name} exists in the hash."
else
    puts "The product #{name} does not exist in the hash."
end
