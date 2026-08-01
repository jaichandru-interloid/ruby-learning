class RollNoExistError < StandardError
end
class Student
  FILE = "student_data.txt"

  def add_student
    print "Enter the name of the Student : "
    s_name = gets.chomp.to_s.downcase.capitalize
    print "Enter the student roll no : "
    roll = gets.chomp.to_i
    data = {student_name: s_name, roll_no: roll}

    File.foreach(FILE) do |line|
      if line.include?("=>\"#{roll}\"")
        raise RollNoExistError, "Roll number #{roll} already exists!"
      end
    end

    File.open(FILE, "a") do |file|
      file.puts({ student_name: s_name, roll_no: roll })
    end
    puts "Student record added successfully!"
  end
  def display_records
    File.foreach(FILE).each_with_index do |record, index|
      puts "#{index+1} #{record}"
    end
  end
  def search_student
  print "Enter Student Name to Search: "
  name = gets.chomp

  found = false

  File.foreach(FILE) do |line|
    record = eval(line)

    if record[:student_name].downcase == name.downcase
      puts "\nStudent Found!"
      puts "Name     : #{record[:student_name]}"
      puts "Roll No. : #{record[:roll_no]}"
      found = true
      break
    end
  end

  puts "Student not found!" unless found
end

end



student = Student.new
begin
  student.add_student
  student.display_records
  student.search_student
rescue RollNoExistError => e
  puts e.message
end