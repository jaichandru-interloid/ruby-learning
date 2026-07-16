print"Enter the colour:"
colour=gets.chomp.upcase
case colour
when "RED"
    puts"STOP"
when "YELLOW"
    puts "LISTEN"
when "GREEN"
    puts"GO"
else
    puts"Invalid colour"
end