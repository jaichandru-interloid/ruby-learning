class Sentance
    def initialize(name,dept,place)
        @name=name
        @dept=dept
        @place=place
    end
    def display
        puts"I'm #{@name}, I'm working at #{@dept}. I'm coming from #{@place}."
    end
end
print"Enter the name:"
name=gets.chomp
print"Enter the Department:"
dept=gets.chomp
print"Enter where are you from:"
place=gets.chomp
sen=Sentance.new(name,dept,place)
sen.display