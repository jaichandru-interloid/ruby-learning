print"Enter a number:"
num=gets.chomp.to_i
if num>0
    puts"#{num} is a positive number"
elsif num<0
    puts"#{num} is a negative number"
else 
    puts"It's Zero"
end