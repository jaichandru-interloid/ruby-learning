def add_data(students)
    print"Enter the Student ID:"
    id=gets.chomp
    print"Enter student name:"
    name=gets.chomp
    print"Enter age:"
    age=gets.chomp.to_i
    print"Enter the course:"
    course=gets.chomp
    student={
        id:id,
        name:name,
        age:age,
        course:course
    }
    students<< student
    puts"Record added..!"
end

def view_data(students)
    if !students.empty?
        puts"...Student Details..."
        students.each do |student|
            puts"ID: #{student[:id]}, \nName: #{student[:name]}, \nAge: #{student[:age]}, \nCourse: #{student[:course]}"
        end
    else
        puts"No student records found."
    end
end

def search_data(students)
    print"Enter the student Id to search:"
    id=gets.chomp
    student=students.find{|s| s[:id]==id}
    if student
        puts"Student found: ID: #{student[:id]}, \nName: #{student[:name]}, \nAge: #{student[:age]}, \nCourse: #{student[:course]}"
    else
        puts"No student found with ID #{id}."
    end
end

def update_data(students)
  print "Enter Student ID to update: "
  id = gets.chomp
  student = students.find { |s| s[:id] == id }
  if student
    print "Enter New Name: "
    student[:name] = gets.chomp
    print "Enter New Age: "
    student[:age] = gets.chomp.to_i
    print "Enter New Course: "
    student[:course] = gets.chomp
    puts "\nStudent updated successfully!"
  else
    puts "\nStudent not found."
  end
end

def delete_data(students)
    print "Enter Student ID to delete: "
    id = gets.chomp
    student = students.find { |s| s[:id] == id }
    if student
        students.delete(student)
        puts "\nStudent deleted successfully!"
    else
        puts "\nStudent not found."
    end
end

students=[]
option=true
while option==true

    puts"Select an option:"
    puts"1. Add data"
    puts"2. View data"
    puts"3. Search data"
    puts"4. Update data"
    puts"5. Delete data"
    puts"6. Exit"

    print"Enter your choice:"
    choice=gets.chomp.to_i

    case choice
        when 1
            add_data(students)
        when 2
            view_data(students)
        when 3
            search_data(students)
        when 4
            update_data(students)
        when 5
            delete_data(students)
        when 6
            puts"Exiting"
            break
        else
            puts"Invalid choice. Please select a valid option."
    end
end