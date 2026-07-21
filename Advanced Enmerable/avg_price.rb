cart = {}

print "Enter the number of products: "
n = gets.chomp.to_i

n.times do
    print "Enter product name: "
    name = gets.chomp

    print "Enter category: "
    category = gets.chomp

    print "Enter price: "
    price = gets.chomp.to_i

    cart[name] = { category: category, price: price }
end

grouped = cart.group_by { |key,details| details[:category] }

grouped.each do |category, products|
    total = products.sum { |key,details| details[:price] }
    average = total.to_f / products.size

    puts "\nCategory: #{category}"
    puts "Average Price: #{average}"
end