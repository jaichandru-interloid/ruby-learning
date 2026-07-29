#Question 11
class Customer
  attr_reader :customer_name
  def initialize (customer_name)
    @customer_name = customer_name
  end
end

class Product
  attr_reader :product_name, :product_price
  def initialize(product_name, product_price)
    @product_name = product_name
    @product_price = product_price
  end
end

class Cart
  attr_reader :products
  def initialize
    @products = []
  end

  def add_product(product)
    products << product
  end

  def total
    @products.sum { |product| product.product_price }
  end
end

class Order
  def initialize(customer, cart)
    @customer = customer
    @cart = cart
  end
  
  def invoice
    puts "Invoice"
    puts "Customer : #{@customer.customer_name}"
    @cart.products.each do |product|
      puts "#{product.product_name} : #{product.product_price}"
    end
    puts "-------------------"
    puts"Total : #{@cart.total}"
  end
end

customer=Customer.new("John")
laptop = Product.new("Laptop", 50000)
mouse = Product.new("Mouse", 1000)
keyboard = Product.new("Keyboard", 2500)

cart = Cart.new
cart.add_product(laptop)
cart.add_product(mouse)
cart.add_product(keyboard)

order = Order.new(customer, cart)
order.invoice

#Question 12
class Student
  attr_reader :student_name

  def initialize(name)
    @student_name = name
  end
end

class Teacher
  attr_reader :teacher_name

  def initialize(name)
    @teacher_name = name
  end
end

class ClassRoom
  def initialize
    @students = []
  end

  def add_student(student)
    @students << student
  end

  def assign_teacher(teacher)
    @teacher = teacher
  end

  def display_classroom
    puts "Classroom Report"
    puts
    puts "Teacher : #{@teacher.teacher_name}"
    puts
    puts "Students"
    puts

    @students.each_with_index do |student, index|
      puts "#{index + 1}. #{student.student_name}"
    end
  end
end

teacher = Teacher.new("David")

student1 = Student.new("John")
student2 = Student.new("Alice")
student3 = Student.new("Bob")

classroom = ClassRoom.new
classroom.assign_teacher(teacher)
classroom.add_student(student1)
classroom.add_student(student2)
classroom.add_student(student3)

classroom.display_classroom

#Question 13
class ATM
  def initialize(pin)
    @pin = pin
    @balance = 0
  end

  def validate_pin(entered_pin)
    if entered_pin == @pin
      puts "PIN Verified"
      true
    else
      puts "Invalid PIN"
      false
    end
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    if amount <= @balance
      @balance -= amount
    else
      puts "Insufficient Balance"
    end
  end

  def balance
    puts "Current Balance : #{@balance}"
  end
end

atm = ATM.new(1234)

if atm.validate_pin(1234)
  atm.deposit(10000)
  atm.withdraw(2500)
  atm.balance
end