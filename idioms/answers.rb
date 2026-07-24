#Question 1
x ||=[]
p x
puts"___________________________________________________________________"

#Question 2
user=nil

puts "found" if user&.address&.city
puts"___________________________________________________________________"


#Question 3
class Person
  attr_reader :age
  def initialize(name, age)
    @name=name
    @age=age
  end

  def compare(other)
    @age<=>other.age
  end
end

person1=Person.new("John", 23)
person2=Person.new("Iva", 20)

puts person1.compare(person2)