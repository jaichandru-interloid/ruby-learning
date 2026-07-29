module Walkable
  def move
    puts "I can Walk..!"
  end
end

class Animal
  include Walkable
end

class Dog < Animal
  include Walkable
end

class Cat < Animal
  include Walkable
end

animal = Animal.new
dog = Dog.new
cat = Cat.new

puts cat.class
puts dog.class
puts Cat.superclass
puts Dog.superclass
puts Cat.ancestors
puts Dog.ancestors
puts cat.respond_to?("move")
puts dog.respond_to?("move")
puts cat.is_a? (Object)
puts dog.is_a? (Object)