discount_lambda=->(price) do
  rate = case price
      when 1000...2000 then 0.05
      when 2000...3000 then 0.1
      when 3000...4500 then 0.15
      else 0
      end
  discount = price*rate
end

print "Enter the price: "
price=gets.chomp.to_i
discount=discount_lambda.call(price)
puts "The discount is : #{discount}."
puts "The final price is : #{price-discount}"