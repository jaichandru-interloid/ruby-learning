print"Enter the day number between 1-7:"
num=gets.chomp.to_i
case num
when 1
    puts"Sunday"
when 2
    puts"Monday"
when 3
    puts"Tuesday"
when 4
    puts"Wednesday"
when 5
    puts"Thursday"
when 6
    puts"Friday"
when 7
puts"Saturday"
else
    puts"Invalid input"
end
