class Person
    attr_reader :name
    def initialize(name)
        @name=name
    end
end

class Student<Person
    def initialize(name)
        super(name)
    end
end

student=Student.new("John")
puts student.name
