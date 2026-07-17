print"Enter the No of values in the array:"
n=gets.chomp.to_i
arr1=[]
arr2=[]
puts"Enter the Array 1 values:"
n.times do |i|
    arr1[i]=gets.chomp.to_i
end
puts"Enter the Array 2 values:"
n.times do |i|
    arr2[i]=gets.chomp.to_i
end
merged=(arr1+arr2).uniq
puts"The array after the merging and the removing of the duplicates: #{merged}"