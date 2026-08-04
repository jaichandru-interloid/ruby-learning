require "csv"
class Student
  FILE = "student_report.csv"

  def initialize
    unless File.exist?(FILE)
      CSV.open(FILE, "w") do |csv|
        csv << ["Roll No", "Name", "Tamil", "English", "Maths", "Science", "Social"]
      end
    end
  end
  
  def add_data
    print "Enter the roll_no : "
    roll = gets.chomp.to_i
    print "Enter the name : "
    name = gets.chomp
    print "Enter the mark in Tamil : "
    tamil = gets.chomp.to_i
    print "Enter the mark in English : "
    english = gets.chomp.to_i
    print "Enter the mark in Maths : "
    maths = gets.chomp.to_i
    print "Enter the mark in Science : "
    science = gets.chomp.to_i
    print "Enter the mark in Social Science : "
    social = gets.chomp.to_i

    CSV.open(FILE, "a") do |csv|
      csv << [roll, name, tamil, english, maths, science, social]
    end
    puts "Record added successfully...!"
  end

  def total_and_average
    puts "-" * 80
    puts "%-6s %-10s %-8s %-8s %-8s %-8s %-8s %-8s %-8s" %
        ["Roll", "Name", "Tamil", "English", "Maths", "Science", "Social", "Total", "Average"]
    puts "-" * 80

    CSV.foreach(FILE, headers: true) do |row|
      marks = [
        row["Tamil"].to_i,
        row["English"].to_i,
        row["Maths"].to_i,
        row["Science"].to_i,
        row["Social"].to_i
      ]

      total = marks.sum
      average = (total.to_f/ marks.size).round(2)

      puts "%-6s %-10s %-8.0f %-8.0f %-8.0f %-8.0f %-8.0f %-8.0f %-8.2f" %
          [
            row["Roll No"],
            row["Name"],
            marks[0],
            marks[1],
            marks[2],
            marks[3],
            marks[4],
            total,
            average
          ]
    end

    puts "-" * 80
  end
end

student = Student.new

loop do
  puts "================MENU================"
  puts "1. Add new data"
  puts "2. Final report of each students"
  puts "3. Exit"
  puts "===================================="
  print "Enter your choice :"
  choice = gets.chomp.to_i
  case choice
  when 1
    student.add_data
  when 2
    student.total_and_average
  when 3
    puts "Exiting....!"
    break
  else
    puts "Invalid choice"
  end
end