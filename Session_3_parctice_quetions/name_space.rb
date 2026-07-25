module School
  class Student
    def info
      puts "School Student"
    end
  end
end

module College
  class Student
    def info
      puts "College Student"
    end
  end
end

s1=School::Student.new
s2=College::Student.new

s1.info
s2.info