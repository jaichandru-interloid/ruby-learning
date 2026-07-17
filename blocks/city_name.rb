city=[]
print"Enter the number of cities:"
n=gets.chomp.to_i
n.times do |i|
    print "Enter the city name:"
    city[i]=gets.chomp
end
city.each do |i|
    puts "City name: #{i}"
end