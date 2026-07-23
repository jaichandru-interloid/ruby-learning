class Shape
    def area
        puts"Method overridded...!"
    end
end
class Circle < Shape
    def initialize(radius)
        @radius=radius
    end

    def area
        pi=Math::PI
        circle_area=pi*(@radius**2)
        puts"Area of circle is : #{circle_area}"
    end
end

class Square < Shape
    def initialize(side)
        @side=side
    end

    def area
        s_area=@side**2
        puts"Area of the square is : #{s_area}"
    end
end

print "Enter the radius of the circle: "
rad=gets.chomp.to_f
circle=Circle.new(rad)

print "Ener the side of the square: "
sid=gets.chomp.to_f
square=Square.new(sid)

circle.area
square.area