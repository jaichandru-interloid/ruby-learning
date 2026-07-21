arr=[1,2,3,4,5]
product=arr.reduce(1) do |prod,n|
    prod*n
end
puts product
