arr=[1,2,3,4,5,6,7,8,9,10]
groups=arr.group_by{|i| i%2==1}
puts"ODD: #{groups[true]}"
puts"EVEN: #{groups[false]}"