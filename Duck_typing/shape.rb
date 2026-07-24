class Circle
  PI = Math::PI
  def initialize(radius)
    @radius=radius
  end

  def area; PI*(@radius**2); end
end

class Square
  def initialize(side)
    @side=side
  end

  def area; @side**2; end; 
end

def calculate(shape); shape.area; end

circle=Circle.new(14)

square=Square.new(22)

[circle, square].each do |i|
  puts calculate(i)
end