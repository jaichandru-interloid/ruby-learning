class Employee
  attr_reader :name, :id, :salary

  def initialize(name, id, salary)
    @name = name
    @id = id
    @salary = salary
  end
end

class Manager < Employee
  attr_reader :rating

  def initialize(name, id, salary, rating)
    super(name, id, salary)
    @rating = rating

    @salary += @rating >4.5 ? 10000 : @rating >3.5 ? 5000 :0
  end
end

employee=Employee.new("John", 105, 10000)
manager=Manager.new("Charlie", 109, 40000, 4.4)

puts employee.salary
puts manager.salary