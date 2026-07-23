class Office
    def greet
        "Hiii....!, programmer. "
    end
end

class Welcome<Office
    def greet
        super+"Welcome to ruby...!"
    end
end

welcome=Welcome.new

puts welcome.greet