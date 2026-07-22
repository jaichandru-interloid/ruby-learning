class Student
    attr_reader :name
    def initialize(name,grade)
        @name=name
        @grade=grade
    end

    def check
        if @grade>50
            "Pass"
        else
            "Fail"
        end
    end
end
print"Enter the name:"
name=gets.chomp.capitalize
print"Enter the mark:"
mark=gets.chomp.to_i
grd=Student.new(name,mark)
grade=grd.check
puts"#{name} is #{grade}"