class Counter
    attr_reader :count

    def initialize
        @count=0
    end

    def increment
        @count+=1
    end

    def reset
        @count=0
    end
end

counter=Counter.new

puts"Initial Count: #{counter.count}"

counter.increment
counter.increment
puts"After Increment: #{counter.count}"

counter.reset
puts"After Reset: #{counter.count}"