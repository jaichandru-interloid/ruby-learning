class Car
    def initialize(make,model,year)
        @make=make
        @model=model
        @year=year
    end

    def display_info
        puts "Car Make: #{@make}"
        puts "Car Model: #{@model}"
        puts "Car Year: #{@year}"
    end
end 

car=Car.new("Toyota", "Camry", 2020)
car.display_info
car2=Car.new("Honda", "Civic", 2021)
car2.display_info

