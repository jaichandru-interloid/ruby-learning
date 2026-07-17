def fehrenheit(heit)
    fer=(heit*9.0/5)+32
    return fer
end

print"Enter the heit in celsius : "
heat=gets.chomp.to_f
puts"The heit in the fehrenheit: #{fehrenheit(heat)}F."