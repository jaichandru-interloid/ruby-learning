#Question 1
array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
square_array = array.map{|num| num**2}.select{|number| number%2==0}

p square_array

p"-------------------------------------------------------------"

#Question 2
cart = [
  { name: "Pen",  price: 20,  qty: 3 },
  { name: "Book", price: 150, qty: 2 },
  { name: "Bag",  price: 800, qty: 1 }
]

total = 0
cart.each do |product|
  total += (product[:price] * product[:qty])
end
puts "Toatl : #{total}"

p"-------------------------------------------------------------"

#Question 3
marks={
  "Alice" => 85,
  "Bob"   => 42,
  "Chris" => 67,
  "David" => 35,
  "Eva"   => 91
}

pass=[]
fail=[]
marks.each do |name, mark|
  if mark > 50
    pass << name
  else
    fail << name
  end
end

puts "Passed : #{pass} \nFailed : #{fail}"
p"-------------------------------------------------------------"

#Question 4
array = [[1, nil, 2], [2, 3, nil], [3, [4, nil]]]
value = array.flatten.compact.uniq
p value

p"-------------------------------------------------------------"

#Question 5
array = ["ruby", "go", "rails", "css", "html", "js"]
hash = array.group_by{|x| x.length}
p hash
p"-------------------------------------------------------------"

#Question 6
str = "ruby rails ruby html rails ruby"
words=str.split
hash = {}
for i in 0...words.length
    count=0
    for j in i...words.length
        if words[i]==words[j]
            count+=1
        end
    end
    check=0
    hash.each do |key,value|
        if key==words[i]
            check+=1
        end
    end
    if check==0
        hash[words[i]]=count
    end
end
puts hash
p"-------------------------------------------------------------"

# Question 7
marks = {
  "Alice" => 78,
  "Bob"   => 92,
  "Chris" => 65,
  "David" => 88
}

marks = marks.sort_by{|key, value| value}
new_list = []
for i in 0...marks.length
  new_list << marks[marks.length-1-i]
end
new_list.each_with_index do|mark, index|
  puts "#{index+1}. #{mark}"
end
p"-------------------------------------------------------------"


#question 8
array = ["45", "abc", "78", "", "90", "xy"]
filtered_array = array.filter_map{|number| number.to_i if number.to_i.to_s == number}

p filtered_array
p"-------------------------------------------------------------"

#Question 9
stock = {
  "Pen"    => 12,
  "Book"   => 0,
  "Bag"    => 5,
  "Pencil" => 0
}
puts "Any item out of stock?      : #{stock.any?{|key, value| value ==0}}"
puts "All items in stock?         : #{stock.all?{|key, value| value ==50}}"
puts "No item above 50?           : #{stock.none?{|key, value| value ==50}}"
puts "Exactly one item above 10?  : #{stock.one?{|key, value| value >10}}"
p"-------------------------------------------------------------"

#Quetion 10
student_array = [
  { name: "Alice", subjects: ["Ruby", "HTML"] },
  { name: "Bob",   subjects: ["CSS", "Ruby"] },
  { name: "Chris", subjects: ["JS", "HTML", "Ruby"] }
]

subject = student_array.flat_map{|student| student[:subjects]}.uniq.sort
p subject
p"-------------------------------------------------------------"


#Quetion 13
class Student
  attr_reader :name
  
  def initialize (name, marks)
    @name = name
    @marks = marks
    @average = 0
    
  end
  
  def average
    total=0
    @marks.each do |mark|
      total+=mark
    end
    @average = (total / @marks.length).to_f
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

  def report
    puts "#{@name} - Average : #{average} - Grade #{grade}"
  end
end

alice = Student.new("Alice", [80, 90, 85])
bob   = Student.new("Bob",   [50, 45, 60])

alice.report
bob.report

p"-------------------------------------------------------------"
