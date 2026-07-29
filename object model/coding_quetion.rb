#Method lookup
class Animal
  def speak
    puts "Animal can make sound"
  end
end

class Dog < Animal
  # def speak
    # puts "Dog sound woof..!"
  # end
end

animal = Animal.new
dog = Dog.new

animal.speak
dog.speak

#Singleton method
class Dog
  def speak
    puts "Woof..!"
  end
end

dog1 = Dog.new
dog2 = Dog.new
dog1.speak
dog2.speak


def dog2.move
  puts "run"
end
dog2.move

#Ancestors
module Move

end

class Animal
  include Move
end

class Dog < Animal
end

puts Dog.ancestors


#respond_to?

array = [10, 3.14, "Hello", true, nil, :ruby, [1, 2, 3], {:name=>"John", :age=>25}]
puts array.respond_to?(:upcase)
array.each do |value|
  puts value.respond_to?(:upcase)

end