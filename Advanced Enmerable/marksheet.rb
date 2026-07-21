print"Enter th number of students:"
n=gets.chomp.to_i
marks=[]
data={}
pass={}
fail={}
for i in 0...n
    print"Enter the mark of student #{i+1}:"
    marks[i]=gets.chomp.to_i
    data["Student #{i+1}"]=marks[i]
end
average=marks.sum/n
puts"Average of all Students: #{average}"
data = data.sort_by { |name, mark| mark }
topper_name, topper_mark = data.last
puts "Topper: #{topper_name} (#{topper_mark})"
data.each do |name, mark|
    if mark >= 51
        pass[name] = mark
    else
        fail[name] = mark
    end
end
puts "Students who passed:"
pass.each do |name, mark|
    puts "#{name}: #{mark}"
end
puts "Students who failed:"
fail.each do |name, mark|
    puts "#{name}: #{mark}"
end