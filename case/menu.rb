print"Select the option \n1.add \n 2.view \n 3.exit :"
choice=gets.chomp.to_i
case choice
when 1
    puts "ADD"
when 2
    puts "VIEW"
when 3
    puts "EXIT"
else
    puts "Invalid input"
end