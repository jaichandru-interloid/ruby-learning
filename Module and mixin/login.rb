class Person
    def greet
        puts"Hello...!"
    end
end

module Logger
    def greet
        puts "Before logging in....!"
        super
        puts "After logging in....!"
    end
end

Person.prepend(Logger)
person=Person.new
person.greet