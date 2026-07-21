marks = []

print "Enter the number of students: "
n = gets.chomp.to_i

puts "Enter the marks:"
for i in 0...n
    marks[i] = gets.chomp.to_i
end

pass, fail = marks.partition do |mark|
    mark >= 50
end

puts "Pass: #{pass}"
puts "Fail: #{fail}"