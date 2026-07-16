print"Enter the number:"
n=gets.chomp.to_i
count=0
while n>0
    count+=1
    n/=10
end
puts"Count of the digits: #{count}."