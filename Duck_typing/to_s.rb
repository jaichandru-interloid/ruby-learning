class Person
  def initialize(name)
    @name = name
  end

  def to_s; "Person name : #{@name}"; end
end

class Vehicle
  def initialize(model)
    @model = model
  end

  def to_s; "Car model name: #{@model}"; end
end

def print_method(object); puts object.to_s; end

person=Person.new("John")
vehicle=Vehicle.new("Audi")

print_method(person)
print_method(vehicle)
print_method(10)
print_method("I like ruby....!")