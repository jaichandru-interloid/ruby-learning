class Employee
    attr_reader :name, :id, :salary, :work

    def initialize(name, id, salary, work)
        @name=name
        @id=id
        @salary=salary
        @work=work
    end
end

class Developer < Employee
    attr_reader :language

    def initialize(name, id, salary, work, language)
        super(name, id, salary, work)
        @language=language
    end
end

class Tester < Employee
    attr_reader :tool

    def initialize(name, id, salary, work, tool)
        super(name, id, salary, work)
        @tool=tool
    end
end

class Manager < Employee
    attr_reader :ratings

    def initialize(name, id, salary, work, ratings)
        super(name, id, salary, work)
        @ratings=ratings

    if @ratings>=4.5
        @salary+=10000
        elsif @ratings>=3.5
        @salary+=5000
        end
    end
end


developer = Developer.new("Alice", 101, 60000, "Coding", "Ruby")
tester = Tester.new("Bob", 102, 50000, "Testing", "Selenium")
manager = Manager.new("Charlie", 103, 80000, "Managing", 4.8)

puts"Programning language : #{developer.language}"
puts"Tesing_tool          : #{tester.tool}"
puts"Bonus                : #{manager.salary}"