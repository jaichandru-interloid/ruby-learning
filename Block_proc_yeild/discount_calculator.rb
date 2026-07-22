discount_calculator=->(price) do
    case price
    when 1000...1500
        discount=price*0.05
    when 1500...2000
        discount=price*0.1
    when 2000...2500
        discount=price*0.15
    else
        discount=price*0.2
    end
end

print"Enter the price:"
price=gets.chomp.to_i   
discount=discount_calculator.call(price)    
puts"The discount is: #{discount}" 
puts"The final price is: #{price-discount}"