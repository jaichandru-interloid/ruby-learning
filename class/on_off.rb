class Engine
    def initialize(sign)
        if sign==1
            @sign=true
        elsif sign==0
            @sign=false
        else
            @sign=false
        end
    end

    def display
        if @sign==true
            puts"Engine on"
        else
            puts"Engine off"
        end
    end
end

print"Enter the option enter 1 for on, 0 for off (1/0):"
n=gets.chomp.to_i
eng=Engine.new(n)
eng.display