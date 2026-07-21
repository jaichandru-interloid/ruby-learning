marks=[]
print"Enter the number of students:"
n=gets.chomp.to_i
average=marks.sum/n
sort_marks=marks.sort.reverse
k=1
top3=[]
sort_marks.each do |i|
    if k>3
        break
    end
    top3<< i
    k+=1
end

pass,fail=marks.partition{|mark| mark>=50}
grades=marks.group_by do |mark|
    case mark
    when 80..100
        "A"
    when 60...80
        "B"
    when 50...60
        "C"
    else
        "Reapear"
    end
end
p grades
puts ".... CLASS REPORT ...."
puts "Class Average : #{average}"

puts "Top 3 Marks:"
top3.each_with_index do |mark,i|
    puts "#{i + 1}. #{mark}"
end

puts "Pass Count : #{pass.count}"
puts "Fail Count : #{fail.count}"

puts "Students Grouped by Grade:"
grades.each do |grade,
    mark|
    puts "#{grade} : #{mark}"
end