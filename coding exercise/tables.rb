print"Enter the number of the table:"
n=gets.chomp.to_i
for i in 1..10
    puts "#{i}X#{n}=#{i*n}"
end