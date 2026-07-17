print "Enter the total values: "
n = gets.chomp.to_i

arr = []

puts "Enter the array values:"
n.times do |i|
  arr[i] = gets.chomp.to_i
end

duplicate = []

(0...n).each do |i|
    next if arr[0...i].include?(arr[i])
    count=0
    (0...n).each do |j|
        if arr[i]==arr[j]
            count+=1
        end
    end
    puts"The value #{arr[i]} appears #{count} times."
end
