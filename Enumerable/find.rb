print"Enter the No. of names:"
n=gets.chomp.to_i
names=[]
n.times do |i|
    print "Enter the name:"
    names[i]=gets.chomp
end
name=names.find{|i| i.length==4}
puts name