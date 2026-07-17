print "Enter the total values: "
n = gets.chomp.to_i

arr = []

puts "Enter the array values:"
n.times do |i|
  arr[i] = gets.chomp.to_i
end

duplicate = []

(0...n).each do |i|
  ((i + 1)...n).each do |j|
    if arr[i] == arr[j] && !duplicate.include?(arr[i])
      duplicate << arr[i]
    end
  end
end

puts "Duplicate elements: #{duplicate}"