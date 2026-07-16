print"Enter the class: "
cls=gets.chomp.to_i
if cls>0 and cls<=5
    puts"Pass Type: Green pass"
elsif cls>5 and cls<=10
    puts"Pass Type: Red pass"
elsif cls>10 and cls<=12
    puts"Pass Type: Blue pass"
else
    puts"Ivalid class"
end
