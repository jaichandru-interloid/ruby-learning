class Student
  def initialize(name, course, grade)
    @name = name
    @course = course
    @grade = grade
  end

  [:name, :course, :grade].each do |field|
    define_method(field) do
      instance_variable_get("@#{field}")
    end
  end

  def display_all
    instance_variables.each do |var|
      puts "#{instance_variable_get(var)}"
    end
  end
end

student = Student.new("John", "Ruby Programming", "A")
student.display_all