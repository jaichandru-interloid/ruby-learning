array=[]
print"Enter the stage of the array: "
stage=gets.chomp.to_i
stage.times do |i|
  arr=[]
  stage.times do |j|
    arr[j] = gets.chomp.to_i
  end
  array<< arr
end

array=array.flatten
      .sort
      .uniq
p array
