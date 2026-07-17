print"Enter the mark:"
mark=gets.chomp.to_i
if mark>=90 && mark<=100
    puts"A"
elsif mark>=80 && mark<=89
    puts"B"
elsif makr>=70 && mark<=79
    puts"C"
elsif mark>=60 && mark<=69
    puts"D"
else
    puts"F"
end