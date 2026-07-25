class Person
  @@counter=0

  def initialize(name)
    @name = name
    @@counter+=1
  end

  def self.count
    @@counter
  end

  def show
    puts "Name : #{@name}"
  end
end

person1=Person.new("John")
person2=Person.new("Alex")
person3=Person.new("Alexa")

puts "Total instance : #{Person.count}"