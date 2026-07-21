def greet
    puts"Inside the methode"
    if block_given?
        yield
    else
        puts"No block given"
    end
end
greet{puts"Block given"}
greet