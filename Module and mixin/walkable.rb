module Walkable
    def walk
        "walking"
    end
end

class Person
    include Walkable
end

move=Person.new
puts move.walk