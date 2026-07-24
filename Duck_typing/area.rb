class Circle
  PI=Math::PI
  def initialize(radious)
    @radious = radious
  end

  def area; PI*(@radious**2); end
end

class Square
  attr_reader :side
  def initialize(side)
    @side = side
  end

  def area; @side**2; end
end

class Rectangle
  def initialize(length, width)
    @length = length
    @width = width
  end

  def area; @width*@length; end
end

def calculate(word); word.area; end

circle = Circle.new(14)
square = Square.new(22)
rectangle = Rectangle.new(22, 14)

objects=[circle, square, rectangle]

objects.each do |obj|; puts calculate(obj); end