def repeat(n)
    n.times do
        yield
    end
end
print"Enter the nmber of times:"
n=gets.chomp.to_i
repeat(n) do
    puts"Yeild runs"
end