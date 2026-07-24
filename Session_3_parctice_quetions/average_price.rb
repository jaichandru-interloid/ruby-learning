products = [
  { category: "Electronics", price: 1000 },
  { category: "Electronics", price: 1500 },
  { category: "Clothing",    price: 500 },
  { category: "Clothing",    price: 700 },
  { category: "Books",       price: 300 }
]

average_price=products
              .group_by{|item| item[:category]}
              .transform_values do |items|
    items.sum { |item| item[:price] }.to_f / items.size
end

p average_price