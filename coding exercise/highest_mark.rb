print "Enter the number of subjects: "
n = gets.chomp.to_i

student_marks = {}

n.times do
  print "Enter the subject name: "
  name = gets.chomp.downcase

  print "Enter the mark: "
  student_marks[name] = gets.chomp.to_i
end

h_mark = 0
top_subject = ""

student_marks.each do |name, mark|
  if mark > h_mark
    h_mark = mark
    top_subject = name
  end
end

puts "Highest mark subject is #{top_subject} and the score is #{h_mark}."