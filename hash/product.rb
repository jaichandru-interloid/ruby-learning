products={}
print"Enter the total number of products:"
n=gets.chomp.to_i
n.times do |i|
    print"Enter Product:"
    key=gets.chomp
    print"Enter Price:"
    products[key]=gets.chomp
end
puts products