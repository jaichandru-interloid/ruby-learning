#Quetion 1
class Student 
  attr_reader :name, :roll_number, :marks
  def initialize(name, roll_number, marks)
    @name = name
    @roll_number = roll_number
    @marks = marks
  end

  def display_details
    puts "Student Details"
    puts "---------------"
    puts "Name    : #{@name}"
    puts "Roll No : #{@roll_number}"
    puts "Marks   : #{@marks}"
  end

  def result
    @marks >=40 ? "Pass" : "Fail"
  end
end

student1=Student.new("John", 19, 78)

student1.display_details
puts "Result  : #{student1.result}"

#Questin 2
class Employee
  attr_reader :name, :basic_salary
  def initialize(name, basic_salary)
    @name = name
    @basic_salary = basic_salary
  end

  def hra
    @basic_salary * 0.20
  end

  def da
    @basic_salary * 0.10
  end

  def gross_salary
    @basic_salary + hra + da
  end

  def display_salary
    puts "Employee Salary Report"
    puts "----------------------"
    puts "Employee : #{@name}"
    puts "Basic    : #{@basic_salary}"
    puts "HRA      : #{hra.to_i}"
    puts "DA       : #{da.to_i}"
    puts "Gross    : #{gross_salary.to_i}"
  end
end

employee = Employee.new("Rahul", 50000)
employee.display_salary

#Question 3
class BankAccount
  attr_reader :balance
  def initialize(balance)
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def check_balance
    @balance
  end
end

account = BankAccount.new(10000)
account.deposit(5000)
account.withdraw(3000)

puts "Current Balance : #{account.check_balance}"

#Question 4
class Rectangle
  attr_reader :length, :width
  def initialize(length, width)
    @length= length
    @width = width
  end

  def area
    @length*@width
  end

  def perimeter
    2 * (@length + @width)
  end
end
rectangle = Rectangle.new(10, 30)
puts "Area      : #{rectangle.area}"
puts "Perimeter : #{rectangle.perimeter}"

#Quetion 5
class Car
  attr_reader :brand, :model, :year
  def initialize(brand, model, year)
    @brand = brand
    @model = model
    @year = year
  end

  def display_details
    puts"Car Details"
    puts"-----------"
    puts "Brand : #{@brand}"
    puts "Model : #{@model}"
    puts "Year  : #{@year}"
  end
end
car = Car.new("Toyota", "Fortuner", 2023)
car.display_details

#Question 6
class Book
  attr_reader :title, :author
  attr_accessor :available_copies

  def initialize(title, author, available_copies)
    @title = title
    @author = author
    @available_copies = available_copies
  end
end

class Library
  def initialize
    @books = []
  end

  def add_book(book)
    @books << book
    puts "#{book.title} added successfully."
  end

  def borrow_book(title)
    book = @books.find { |b| b.title == title }

    if book
      if book.available_copies > 0
        book.available_copies -= 1
        puts "Book Borrowed Successfully"
        puts "Available Copies : #{book.available_copies}"
      else
        puts "Sorry! No copies available."
      end
    else
      puts "Book not found."
    end
  end

  def return_book(title)
    book = @books.find { |b| b.title == title }

    if book
      book.available_copies += 1
      puts "Book Returned Successfully"
      puts "Available Copies : #{book.available_copies}"
    else
      puts "Book not found."
    end
  end

  def display_books
    puts "Library Books"
    puts "-------------"

    @books.each do |book|
      puts "Title   : #{book.title}"
      puts "Author  : #{book.author}"
      puts "Copies  : #{book.available_copies}"
    end
  end
end

library = Library.new

book1 = Book.new("Ruby Basics", "Matz", 3)
book2 = Book.new("OOP in Ruby", "John", 2)

library.add_book(book1)
library.add_book(book2)

library.display_books

puts "Borrowing Ruby Basics..."
library.borrow_book("Ruby Basics")

puts "Returning Ruby Basics..."
library.return_book("Ruby Basics")

puts "Updated Library"
library.display_books