fahrentheit=Proc.new{|n| puts "In Fahrentheit : #{n*9/5+32}"}

print "Enter the heat in Celsius: "
celsius=gets.chomp.to_i

fahrentheit.call(celsius)