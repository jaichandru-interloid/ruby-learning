class Employee
  def printer
    puts "Employee Accessed"
  end
end

class Student
  def printer
    puts "Student Accessed"
  end
end

class Account
  def printer
    puts "Account Accessed"
  end
end

def flexible_printer(object)
  if object.respond_to?(:printer)
    object.printer
  else
    puts "Object not found"
  end
end

employee=Employee.new
student=Student.new
account=Account.new

[employee, student, account].each do |obj|
  flexible_printer(obj)
end