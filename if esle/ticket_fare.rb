print"Enter age:"
age=gets.chomp.to_i
if age<18 && age>0
    puts"Child"
elsif age>=18 && age<=60
    puts"Adult"
elsif age>60
    puts"Senior"
else
    puts"Enter a valid age."
end