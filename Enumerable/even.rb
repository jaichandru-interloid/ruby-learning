print"Enter the maximum number:"
n=gets.chomp.to_i
even_num=(1..n).select{|i| i.even?}
puts even_num