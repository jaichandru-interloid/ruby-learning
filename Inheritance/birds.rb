class Animal
    def move
        "moving"
    end
end
class Bird<Animal
    def move
        "flying"
    end
end
bird=Bird.new

puts bird.move