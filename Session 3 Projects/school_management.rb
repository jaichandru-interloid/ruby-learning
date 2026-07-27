module Reportable
  def print_report
    puts "\n===== SCHOOL REPORT ====="
  end
end

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Student < Person
  attr_reader :roll_no, :marks, :average, :grade
  def initialize(name, roll_no, marks)
    super(name)
    @roll_no = roll_no
    @marks = marks
    calculate_average
    calculate_grade
  end

  def calculate_average
    @average = @marks.sum.to_f / @marks.length
  end

  def calculate_grade
    @grade =
      case @average
      when 90..100
        "A"
      when 80...90
        "B"
      when 70...80
        "C"
      when 60...70
        "D"
      else
        "F"
      end
  end

  def display
    puts "Roll No : #{@roll_no}"
    puts "Name    : #{@name}"
    puts "Marks   : #{@marks.join(', ')}"
    puts "Average : #{@average.round(2)}"
    puts "Grade   : #{@grade}"
    puts
  end
end

class Teacher < Person
  attr_reader :subject

  def initialize(name, subject)
    super(name)
    @subject = subject
    @students = []
  end

  def assign_student(student)
    @students << student
  end

  def list_students
    puts "\nStudents under #{@name}:"
    @students.each do |student|
      puts student.name
    end
  end
end

class Course
  include Reportable

  attr_reader :title, :teacher, :students

  def initialize(title, teacher)
    @title = title
    @teacher = teacher
    @students = []
  end

  def enroll(student)
    @students << student
    @teacher.assign_student(student)
  end

  def show_report
    print_report

    puts "Course  : #{@title}"
    puts "Teacher : #{@teacher.name}"
    puts

    puts "Student Details"
    puts "---------------"
    @students.each(&:display)

    topper = @students.max_by(&:average)

    puts "Topper : #{topper.name} (#{topper.average.round(2)})"

    class_average = @students.map(&:average).sum / @students.size
    puts "Class Average : #{class_average.round(2)}"

    puts "\nPassed Students:"
    @students.select { |s| s.average >= 60 }.each do |student|
      puts student.name
    end

    puts "\nStudents by Grade:"
    grouped = @students.group_by(&:grade)
    grouped.each do |grade, students|
      puts "#{grade} => #{students.map(&:name).join(', ')}"
    end

    puts "\nStudents Sorted by Average:"
    @students.sort_by { |student| -student.average }.each do |student|
      puts "#{student.name} - #{student.average.round(2)}"
    end
  end
end

teacher = Teacher.new("Mr. Kumar", "Ruby")
course = Course.new("Ruby Programming", teacher)

student1 = Student.new("John", 101, [90, 85, 88, 92, 87])
student2 = Student.new("Alice", 102, [95, 98, 94, 96, 97])
student3 = Student.new("Bob", 103, [70, 75, 72, 68, 74])
student4 = Student.new("David", 104, [55, 60, 58, 50, 62])

course.enroll(student1)
course.enroll(student2)
course.enroll(student3)
course.enroll(student4)

course.show_report