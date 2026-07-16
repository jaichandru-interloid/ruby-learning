print"Enter the mark:"
mark=gets.chomp.to_i
case mark
when 90..100
    puts "A"
when 80..89
    puts "B"
when 70..79
    puts "C"
when 60..69
    puts "D"
else
    puts"Fail"
end