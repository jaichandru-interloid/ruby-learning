array=[1,2,3,4,5,6,7,8]
result=array.filter_map do |n|
  n*2 if n.even?
end

p result