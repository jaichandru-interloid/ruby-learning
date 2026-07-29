#Q1. Squares of Even Numbers
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
square_array = array.select{|number| number%2==0}.map{|num| num**2}
p square_array

puts"-------------------------------------------------------------"

#Q2. Total Cart Value
cart = [
  { name: "Pen",  price: 20,  qty: 3 },
  { name: "Book", price: 150, qty: 2 },
  { name: "Bag",  price: 800, qty: 1 }
]


total = cart.reduce(0) {|sum, item| sum + (item[:price] * item[:qty])}
puts "Toatl : #{total}"

puts"-------------------------------------------------------------"

#Q3. Pass and Fail List
marks={
  "Alice" => 85,
  "Bob"   => 42,
  "Chris" => 67,
  "David" => 35,
  "Eva"   => 91
}

passed, failed = marks.partition{|key, value| value >=50}

puts "Passed : #{passed} \nFailed : #{failed}"
puts"-------------------------------------------------------------"

#Q4. Clean the Data
array = [[1, nil, 2], [2, 3, nil], [3, [4, nil]]]
value = array.flatten.compact.uniq
p value

puts"-------------------------------------------------------------"

#Q5. Group Words by Length
array = ["ruby", "go", "rails", "css", "html", "js"]
hash = array.group_by{|x| x.length}
p hash
puts"-------------------------------------------------------------"

#Q6. Word Frequency
str = "ruby rails ruby html rails ruby"
words=str.split.each_with_object(Hash.new(0)) do |word, hash|
  hash[word] +=1
end

puts words
puts"-------------------------------------------------------------"

#Q7. Rank List
marks = {
  "Alice" => 78,
  "Bob"   => 92,
  "Chris" => 65,
  "David" => 88
}

marks = marks.sort_by{|key, value| -value}
marks.each_with_index do |(name, mark), index|
  puts "#{index+1}. #{name} - #{mark}"
end
puts"-------------------------------------------------------------"


#Q8. Extract the Valid Marks
array = ["45", "abc", "78", "", "90", "xy"]
filtered_array = array.filter_map{|number| number.to_i if number.to_i.to_s == number}

p filtered_array
puts"-------------------------------------------------------------"

#Q9. Stock Check Report9
stock = {
  "Pen"    => 12,
  "Book"   => 0,
  "Bag"    => 5,
  "Pencil" => 0
}
puts "Any item out of stock?      : #{stock.any?{|key, value| value ==0}}"
puts "All items in stock?         : #{stock.all?{|key, value| value ==50}}"
puts "No item above 50?           : #{stock.none?{|key, value| value >50}}"
puts "Exactly one item above 10?  : #{stock.one?{|key, value| value >10}}"
puts"-------------------------------------------------------------"

#Q10. Unique Subject List
student_array = [
  { name: "Alice", subjects: ["Ruby", "HTML"] },
  { name: "Bob",   subjects: ["CSS", "Ruby"] },
  { name: "Chris", subjects: ["JS", "HTML", "Ruby"] }
]

subject = student_array.flat_map{|student| student[:subjects]}.uniq.sort
p subject
puts"-------------------------------------------------------------"

#Q11. Write Your Own Iterator
def repeat_task(times)
  if block_given?
    (1..times).each do |round|
      yield(round)
    end
  else
    puts "No block given"
  end
end

repeat_task(3) { |round| puts "Task #{round} completed" }
repeat_task(2)
puts"-------------------------------------------------------------"

#Q12. Four Ways to Shout
words = ["ruby", "rails", "html"]
block_result = words.map{|word| word.upcase}

my_proc = Proc.new{|word| word.upcase}
proc_result = words.map(&my_proc)

my_lambda = ->(word) {word.upcase}
lambda_result = words.map(&my_lambda)

symbol_result = words.map(&:upcase)

puts "Block  : #{block_result}"
puts "Proc   : #{proc_result}"
puts "Lambda : #{lambda_result}"
puts "Symbol : #{symbol_result}"

puts "Proc with an extra argument:"
my_proc.call("ruby", "extra")
puts "runs anyway, the extra argument is ignored"

puts "Lambda with an extra argument:"
begin
  my_lambda.call("ruby", "extra")
rescue ArgumentError
  puts "ArgumentError"
end
puts"-------------------------------------------------------------"

#Q13. Student Class
class Student
  attr_reader :name

  @@total_students=0
  def initialize (name, marks)
    @name = name
    @marks = marks
    @average = 0
    @@total_students+=1
  end

  def report
    puts "#{@name} - Average : #{average} - Grade #{grade}"
  end

  def self.total_students
    @@total_students
  end
  
  def report
    puts "#{@name} - Average : #{average} - Grade #{grade}"
  end
  
  private
  def average
    1
    total=0
    @marks.each do |mark|
      total+=mark
    end
    @average = (total.to_f / @marks.length).round(2)
    return @average
  end

  def grade
    case @average
    when 75..100
      "A"
    when 60..74
      "B"
    when 0..60
      "c"
    end
  end
end

alice = Student.new("Alice", [80, 90, 85])
bob   = Student.new("Bob",   [50, 45, 60])

alice.report
bob.report
puts "Total Students : #{Student.total_students}"
puts"-------------------------------------------------------------"

#Q14. Employee Salary with Inheritance
class Employee
  def initialize(name, base_salary)
    @name = name
    @base_salary = base_salary
  end

  def salary
    @base_salary
  end

  def details
    puts "#{@name} (#{self.class}) : #{salary.to_i}"
  end
end

class Manager < Employee
  def salary
    super + (super*0.20) + 5000
  end
end

class Developer < Employee
  def salary 
    super + (super*0.10)
  end
end

Employee.new("Raj", 30000).details
Manager.new("Priya", 50000).details
Developer.new("Karthik", 40000).details
puts"-------------------------------------------------------------"

#Q15. Modules – include, extend and prepend
module Printable
  def print_details
    puts "Document : #{@title}"
  end
end

module Trackable
  def created_by
    puts "Created by : Interloid Team"
  end
end

module Auditable
  def save
    puts "[LOG] save called"
    super
  end
end

module Interloid
  class Document
    include Printable
    extend Trackable
    prepend Auditable

    def initialize(title)
      @title = title
    end

    def save
      puts "#{@title} saved successfully"
    end
  end
end

doc = Interloid::Document.new("Report")

doc.print_details
doc.save
puts Interloid::Document.created_by
puts"-------------------------------------------------------------"

#Q16. Comparable Products
class Product
  attr_reader :name, :price
  include Comparable
  def initialize (name, price)
    @name = name
    @price = price
  end

  def <=> (other)
    @price <=> other.price
  end

end

products = [
  Product.new("Bag",  800),
  Product.new("Pen",  20),
  Product.new("Book", 150)
]

puts products.sort.map(&:name).inspect
puts products.max.name
puts products.min.name
puts Product.new("Pen", 20) < Product.new("Book", 150)
puts"-------------------------------------------------------------"

#Q17. Private vs Protected
class Player
  attr_reader :name
  def initialize (name, score)
    @name = name
    @score = score
  end

  def beats?(other)
    score > other.score
  end

  def summary
    puts "#{name} Scored #{@score}"
  end

  protected
  def score
    @score
  end
end

ada = Player.new("Ada", 90)
bob = Player.new("Bob", 75)

puts ada.beats?(bob)
puts bob.beats?(ada)
ada.summary

begin
  ada.score
rescue NoMethodError
  puts "NoMethodError : score is protected"
end
puts"-------------------------------------------------------------"

#Q18. Closures – Discount Generator
def make_discount(percentage)
  lambda do |amount|
    amount - (amount * percentage / 100.0)
  end
end

def make_counter
  count =0
  lambda do 
    count += 1
  end
end

ten_percent   = make_discount(10)
fifty_percent = make_discount(50)

puts ten_percent.call(2000)
puts fifty_percent.call(2000)

counter_a = make_counter
counter_b = make_counter

puts counter_a.call
puts counter_a.call
puts counter_b.call
puts"-------------------------------------------------------------"

#Q19. Sales Report
sales = [
  { name: "Alice", region: "South", amount: 12000 },
  { name: "Bob",   region: "North", amount: 8000  },
  { name: "Chris", region: "South", amount: 15000 },
  { name: "David", region: "North", amount: 5000  },
  { name: "Eva",   region: "East",  amount: 10500 }
]

total_sale = sales.sum {|person| person[:amount]}

average_sale = (total_sale.to_f / sales.size).round(1)

sales_region = sales.group_by{|person| person[:region]}
                    .transform_values { |people| people.sum { |p| p[:amount] } }

top_performer = sales.max_by {|person| person[:amount]}

below_average = sales.select{|person| person[:amount] < average_sale}

puts "Total Sales : #{total_sale}"
puts "\nAverage Sales : #{average_sale}"
puts "\nRegion Wise Total"
sales_region.each do |region, total|
  puts "#{region} : #{total}"
end
puts "\nTop Performer"
puts "#{top_performer[:name]} (#{top_performer[:amount]})"
puts "\nBelow Average Performers"
below_average.each do |person|
  puts person[:name]
end
puts"-------------------------------------------------------------"

#Q20. Library System – Rebuilt with OOP
class Book
  attr_reader :title, :author
  def initialize (title, author)
    @title = title
    @author = author
  end

  def to_s
    "#{title} by #{author}"
  end
end

module Searchable
  def find_book(title)
    @books.find {|book| book.title.downcase == title.downcase}
  end
end

class Library
  include Searchable
  @@total_libraries = 0
  def self.total_libraries
    @@total_libraries
  end

  def initialize
    @books = []
    @@total_libraries += 1
  end

  def add_book(book)
    @books << book
    puts "Book Added Successfully"
  end

  def borrow_book(title)
    book = find_book(title)

    if book
      @books.reject! {|b| b == book}
      puts "Book Borrowed Successfully"
    else
      puts "Book Not Available"
    end
  end

  def return_book(book)
    @books << book
    puts "Book returned Successfully"
  end

  def available_books
    puts "\nAvailable Books"
    if @books.empty?
      puts "No books available"
    else
      @books.each { |book| puts book }
    end
  end
end

library = Library.new
loop do
  puts "===== Library Menu ====="
  puts "1. Add Book"
  puts "2. Borrow Book"
  puts "3. Return Book"
  puts "4. View Available Books"
  puts "5. Exit"

  print "Choice : "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Book Title : "
    title = gets.chomp
    print "Book Author : "
    author = gets.chomp
    library.add_book(Book.new(title, author))
  when 2
    print "Book Title : "
    title = gets.chomp
    library.borrow_book(title)
  when 3
    print "Book Title : "
    title = gets.chomp
    print "Book Author : "
    author = gets.chomp
    library.return_book(Book.new(title, author))
  when 4
    library.available_books
  when 5
    puts "Exiting...."
    puts "Total library count : #{Library.total_libraries}"
    break
  else
    puts"Invalid choice"
  end
end