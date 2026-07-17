print"Enter the No. of names:"
n=gets.chomp.to_i
names=[]
n.times do |i|
    names[i]=gets.chomp.downcase
end
print"Enter the letter you need to get the name start from:"
ch=gets.chomp.downcase
found_names=[]
names.each do|name|
    if name.start_with?(ch)
        found_names<< name
    end
end
puts"The found names are #{found_names}"