print"Enter the year: "
year=gets.chomp.to_i
if year%4==0 and year%100!=10
    puts"#{year} is leap year"
elsif year%400==0
    puts"#{year} is leap year"
else
    puts"#{year} is not leap year"
end