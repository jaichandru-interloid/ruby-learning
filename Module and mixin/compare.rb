module Compare
    def bigger(obj)
        compare(obj)
    end
end

class Student
    include Compare
    attr_reader :mark

    def initialize(mark)
        @mark=mark
    end

    def compare(obj)
        @mark>obj.mark
    end
end

class Price
    include Compare
    attr_reader :price

    def initialize(price)
        @price=price
    end

    def compare(obj)
        @price>obj.price
    end
end

s1=Student.new(90)
s2=Student.new(80)

p1=Price.new(600)
p2=Price.new(450)

puts s1.bigger(s2)
puts p1.bigger(p2)