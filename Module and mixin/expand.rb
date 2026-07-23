module Walkable
    def walk
        "walking"
    end
end

class Person
    extend Walkable
end

puts Person.walk