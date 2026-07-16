def delete_product(name)
    products.delete(name)
end
products={}
print"Enter the total number of products:"
n=gets.chomp.to_i
n.times do |i|
    print"Enter Product:"
    key=gets.chomp
    print"Enter Price:"
    products[key]=gets.chomp
end
puts "Before deleting the product: #{products}"
print"Enter the product name to delete:"
name=gets.chomp
delete_product(name)
puts "After deleting the product: #{products}"

