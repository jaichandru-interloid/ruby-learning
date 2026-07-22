class Timer
    def initialize
        @time=0
    end

    def tick
        @time+=1
    end

    def display
        puts "Time : #{@time}"
    end

    def reset
        @time=0
    end
end

timer=Timer.new
timer.display
print"Enter the run count:"
n=gets.chomp.to_i
n.times do
    timer.tick
end

timer.display

timer.reset

timer.display