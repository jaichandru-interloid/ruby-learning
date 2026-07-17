student=[]
print "Enter the number of students:"
n=gets.chomp.to_i
n.times do |i|
    print "Enter the student name:"
    student[i]=gets.chomp
end
student.each do |i|
    puts "Student name: #{i}"
end