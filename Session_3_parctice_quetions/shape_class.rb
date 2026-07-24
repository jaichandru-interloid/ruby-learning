class Shape
  def area
    puts"Area only for the defined shapes"
  end
end

class Circle< Shape
  PI = 3.1415
  def initialize(radious)
    @radious=radious
  end

  def area
    PI*@radious**2
  end
end

class Square< Shape
  def initialize(side)
    @side=side
  end

  def area
    @side**2
  end
end

circle=Circle.new(14)
square=Square.new(22)

puts"Area of circle : #{circle.area}."
puts"Area of square : #{square.area}."