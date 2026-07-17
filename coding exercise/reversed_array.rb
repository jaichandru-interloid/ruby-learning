print"Enter the number of the values in array:"
n=gets.chomp.to_i
arr=[]
puts"Enter array values:"
n.times do |i|
    arr[i]=gets.chomp.to_i
end
r_arr=[]
n-=1
i=0
while  n>=0
    r_arr[i]=arr[n]
    i+=1
    n-=1
end
puts "Reversed array : #{r_arr}"