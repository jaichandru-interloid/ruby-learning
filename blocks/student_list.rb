students=[]
print "Enter the number of students:"
n=gets.chomp.to_i
n.times do |i|
    print "Enter the student name:"
    students[i]=gets.chomp
end
students.each_with_index do |student, index|
    puts "#{index + 1} : #{student}"
end