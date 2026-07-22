class Temperature
    def initialize(temp)
        @temp=temp
        display
        validate_temperature
    end

    def display
        puts"Temperature is #{@temp}C."
    end
    private
    def validate_temperature
        if @temp<=18 
            puts"Cold weather"
        elsif @temp>30
            puts"Warm weather"
        elsif @temp.between?(19, 30)
            puts"Normal weather"
        else
            puts"Enter the correct temperature"
        end
    end
end

print"Enter the temperature:"
t=gets.chomp.to_f
weather=Temperature.new(t)
