print"Enter the number of subjects:"
n=gets.chomp.to_i
student_marks={}
n.times do 
    print"Enter the subject name:"
    name=gets.chomp.downcase
    print"Enter the mark:"
    student_marks[name]=gets.chomp.to_i
end
puts"Student marks:"
student_marks.each do|name,mark|
    puts"#{name}:#{mark}"
end