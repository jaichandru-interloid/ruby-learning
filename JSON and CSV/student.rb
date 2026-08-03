require "json"
class Student
  def initialize(data)
    @data = if File.exist?(FILE) && !File.empty?(FILE)
            JSON.parse(File.read(FILE))
    else
      []
    end
  end

  def add_data 
    print "Enter the Student Name : "
    s_name = gets.chomp.to_s
    print "Enter the Roll_NO : "
    roll_no = gets.chomp.to_i
    student_data = {name: s_name, roll_no: roll_no}
    @data << student_data
    File.open(FILE, "w") do |file|
      file.write(JSON.pretty_generate(@data))
    end
  end

  def display_data
    puts "================Student data================"
    puts File.read(FILE)
  end
end

FILE = "student.json"
data = File.open(FILE, "w")
student = Student.new(data)
loop do
  puts "================MENU================"
  puts "1. Add new data"
  puts "2. View all data"
  puts "3. Exit"
  puts "Enter the choice : "
  choice = gets.chomp.to_i
  case choice
  when 1
    student.add_data
  when 2
    student.display_data
  when 3
    puts "Exiting....!"
    break
  else
    puts "Invalid choice"
  end
end