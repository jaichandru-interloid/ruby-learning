marks=[]
puts"Enter the 5 student marks:"
5.times do |i|
    marks[i]=gets.chomp.to_i
end
puts"Student marks:"
marks.each_with_index do |mark, i|
    puts"Mark #{i + 1} : #{mark}"
end