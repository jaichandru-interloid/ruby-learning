data={}
print"Enter the number of the students:"
n=gets.chomp.to_i
n.times do |i|
    print"Enter the name:"
    name=gets.chomp
    print"Enter the mark:"
    mark=gets.chomp.to_i
    data[name]=mark
end
data = data.sort_by { |name, mark| -mark }.to_h
i=1
data.each do|name,mark|
    if i>3
        break
    end
    puts"#{i}st highest #{name}: #{mark}"
    i+=1
end