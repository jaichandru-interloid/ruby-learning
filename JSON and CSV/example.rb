require 'json'
class Student
  FILE = "data.json"
  def add_marks
    print "Enter the student name :"
    s_name = gets.chomp.to_s
    print "Enter the marks of the each subject :"
    marks = gets.chomp.map{|x| x.split.to_i}
    data = {"student_name": s_name, "marks": marks}
    File.write(FILE, JSON.pretty_generate(data))
  end

  def read_file
    File.foreach(FILE).each do |data|
      puts data
    end
  end
end

student = Student.new

student.add_marks
student.read_file
