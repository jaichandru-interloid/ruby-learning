print"Enter the temprature : "
temprature=gets.chomp.to_i
if temprature>30
    puts"Hot"
elsif temprature>=15 and temprature<=30
    puts"Pleasent"
elsif temprature<15
    puts "cold"
else
    puts"Invalid input"
end