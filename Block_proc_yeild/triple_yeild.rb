def greet
    puts"step 1"
    yield
    puts"step 2"
    yield
    puts"step 3"
    yield
    puts"Final"
end
greet{puts"skip"}
