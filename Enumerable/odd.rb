print"Enter the maximum number:"
n=gets.chomp.to_i
odd_num=(1..n).reject{|i| i.even?}
puts odd_num