def getting(data)
    print "Enter the employee name: "
    data[:name] = gets.chomp
    print "Enter the employee age: "
    data[:age] = gets.chomp.to_i
    print "Enter the employee department: "
    data[:department] = gets.chomp
    print "Enter the employee salary: "
    data[:salary] = gets.chomp.to_i
    print "Enter the email of the employee: "
    data[:email] = gets.chomp
end

def display(data)
    puts "Employee name: #{data[:name]}"
    puts "Employee age: #{data[:age]}"
    puts "Employee department: #{data[:department]}"
    puts "Employee salary: #{data[:salary]}"
    puts "Employee email: #{data[:email]}"
end

def update(data)
    print "Enter the No. of keys you need to update: "
    n = gets.chomp.to_i
    n.times do
        print "Enter the Key: "
        key = gets.chomp.downcase.to_sym
        print "Enter the value: "
        if key == :age || key == :salary
            data[key] = gets.chomp.to_i
        else
            data[key] = gets.chomp
        end
    end
    puts "Employee details after the update:"
    display(data)
end

def deleting(data)
    print "Enter the No. of fields you want to delete: "
    n = gets.chomp.to_i
    n.times do
        print "Enter the key to delete: "
        key = gets.chomp.downcase.to_sym
        data.delete(key)
    end
    puts "Employee details after deleting:"
    puts data
end

data = {}

getting(data)
display(data)

print "Do you want to update the data (y/n): "
decision = gets.chomp.downcase
if decision == "y"
    update(data)
end

print "Do you want to delete any record (y/n): "
decision = gets.chomp.downcase
if decision == "y"
    deleting(data)
end