module Printable
  def print_detail
    puts "Employee name : #{@name}"
  end
end

module Trackable
  def track
    puts"#{@name} is tracked "
  end
end

class Employee 
  include Printable
  include Trackable

  def initialize(name)
    @name=name
  end
end

class Role
  include Printable
  include Trackable

  def initialize(name)
    @name=name
  end
end

employee=Employee.new("John")
role=Role.new("Developer")

employee.print_detail
employee.track

role.print_detail
role.track