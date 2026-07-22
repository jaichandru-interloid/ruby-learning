class Area
    def initialize(width,heigth)
        @width=width
        @heigth=heigth
    end
    def calculate
        area=@width*@heigth
        puts"Area of the rectangle is : #{area}"
    end
end
print"Enter the width of the rectangle:"
w=gets.chomp.to_f
print"Enter the heigth of the rectangle:"
h=gets.chomp.to_f
are=Area.new(w,h)
are.calculate