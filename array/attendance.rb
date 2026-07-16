def alter(name_list, choice)
    case choice
    when "add"
        print"Enter the student name to add:"
        name=gets.chomp
        name_list.push(name)
        puts"Student name added successfully."
    when "remove"
        print"Enter the student name to remove:"
        name=gets.chomp
        if name_list.include?(name)
            name_list.delete(name)
            puts"Student name removed successfully."
        else
            puts"Student name not found."
        end
    when "search"
        print"Enter the student name to search:"
        name=gets.chomp
        if name_list.include?(name)
            puts"Student name found."
        else
            puts"Student name not found."
        end
    else
        puts"Invalid choice."
    end
end

name_list=[]
print"Enter the total number of student in the class:"
n=gets.chomp.to_i
n.times do |i|
    print"Enter the student name:"
    name_list[i]=gets.chomp
end
puts"Select your choice /n1. add /n2.remove /n3. search"
choice=gets.chomp.downcase
