require "csv"
class Employee
  FILE = "employee.csv"

  def initialize
    unless File.exist?(FILE)
      CSV.open(FILE, "w") do |csv|
        csv << ["Name", "Department"]
      end
    end
  end

  def add_data
    print "Enter the employee name : "
    name = gets.chomp.to_s
    print "Enter the department : "
    dept = gets.chomp.to_s

    CSV.open(FILE, "a") do |csv|
      csv << [name, dept]
    end
    puts "Record added successfully....!"
  end

  def display_details
    puts "-"*35
    puts "%-20s %-15s" % ["Name", "Department"]
    puts "-"*35

    CSV.foreach(FILE, headers: true) do |row|
      puts "%-20s %-15s" %
          [
            row["Name"],
            row["Department"]
          ]
    end
    
    puts "-"*35
  end
end

employee = Employee.new
loop do
  puts "================MENU================"
  puts "1. Add new data"
  puts "2. employee details"
  puts "3. Exit"
  puts "===================================="
  print "Enter your choice :"
  choice = gets.chomp.to_i
  case choice
  when 1
    employee.add_data
  when 2
    employee.display_details
  when 3
    puts "Exiting....!"
    break
  else
    puts "Invalid choice"
  end
end