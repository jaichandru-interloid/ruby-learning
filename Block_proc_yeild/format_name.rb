format_name=proc do |name|
    parts=name.split(" ")

    first_name=parts[0]
    last_name=parts[1]

    puts"#{last_name}, #{first_name}"
end
print"Enter the full name:"
name=gets.chomp
puts format_name.call(name)
