def indexing(city)
    city.each_with_index do |city, index|
        puts"#{index + 1}. #{city}"
    end
end
city=[]
puts"Enter 5 cities:"
5.ties do |i|
    city[i]=gets.chomp
end
puts"Your cities are:"
puts city
puts"Indexed cities are:"
indexing(city)