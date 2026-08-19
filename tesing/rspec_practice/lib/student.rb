class Student
  attr_reader :name, :marks

  def initialize(name, marks)
    @name = name
    @marks = marks
  end

  def passed?
    @marks >= 40
  end

  def grade
    case @marks
    when 90..100 then "A"
    when 75..89 then "B"
    when 60..74 then "C"
    when 40..59 then "D"
    else "F"
    end
  end
end