#26. Compress String
str="aaabbccccdaa"
c_str=""
i=0
while i<str.length-1
    count=0
    j=i
    while j<str.length
        if str[i]==str[j]
            count+=1
        else
            i=j-1
            j=str.length
        end
        j+=1
    end
    c_str+=str[i]+count.to_s
    i+=1
end
puts c_str

#27. Find First Non-Repeating Character
str="Swiss".downcase
i=0
while i<str.length
    j=i+1
    count=0
    while j<str.length
        if str[i]==str[j]
            count+=1
        end
        j+=1
    end
    if count==0
        puts str[i]
        break
    end
    i+=1
end

#28. Inventory Update
inventory={
apple:10,
orange:5,
banana:7
}
sold={
apple:3,
banana:5
}
sold.each do|name,quantity|
    inventory[name] -= quantity if inventory.key?(name)
end
puts inventory

# 29. Build a Menu Program
def adding(arr)
    print"Enter the value need to add in array:"
    n=gets.chomp.to_i
    arr<< n
    puts "Value added successfully"
end

def showing(arr)
    puts"The valuse in the arrary are:"
    arr.each do |i|
        puts i
    end
end

def largest(arr)
    largest=0
    arr.each do |i|
        if largest<i
            largest=i
        end
    end
    puts"Largest values is: #{largest}"
end

def smallest(arr)
    smallest=arr[0]
    arr.each do|i|
        if i<smallest
            smallest=i
        end
    end
    puts"Smallest valus is: #{smallest}"
end

option=true
arr=[34,60,54,56,90]
while option==true
    puts"....Select Options...."
    puts"1.Add Number"
    puts"2.Show Numbers"
    puts"3.Find Larger"
    puts"4.Find smallest"
    puts"5.Exit"

    print"Enter the choice:"
    choice=gets.chomp.to_i
    case choice
    when 1
        adding(arr)
    when 2
        showing(arr)
    when 3
        largest(arr)
    when 4
        smallest(arr)
    when 5
        puts"Exiting"
        option=false
    else
        puts"Enter the valid choice"
    end
end

# 30. Mini Student Result System
students={}
print"Enter the students count:"
n=gets.chomp.to_i
i=1
while i<=n
    puts"Enter the mark of Student #{i}:"
    students["Student#{i}"]={}
    j=1
    total=0
    while j<=5
        print"Subject#{j}: "
        mark=gets.to_i
        students["Student#{i}"]["Subject#{j}"]=mark
        total+=mark
        j+=1
    end
    students["Student#{i}"]["Total"]=total
    students["Student#{i}"]["Average"]=total/5
    i+=1
end
highest=0
lowest=nil
pass=0
fail=0

puts "....Student Results...."
students.each do |name,data|
    avg=data["Average"]
    if avg>highest
        highest=avg
    end
    if avg<lowest || lowest==nil
        lowest=avg
    end
    if avg>=90
        grade="A"
        pass+=1
    elsif avg>=75
        grade="B"
        pass+=1
    elsif avg>=60
        grade="C"
        pass+=1
    elsif avg>=50
        grade="D"
        pass+=1
    else
        grade="Fail"
        fail+=1
    end

    puts "#{name}"
    puts "Total   : #{data["Total"]}"
    puts "Average : #{avg}"
    puts "Grade   : #{grade}"
end

puts "Highest Average : #{highest}"
puts "Lowest Average  : #{lowest}"
puts "Pass Count      : #{pass}"
puts "Fail Count      : #{fail}"