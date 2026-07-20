def validate(password)
    return false if password.length < 8
    has_upper = false
    has_lower = false
    has_digit = false

    password.each_char do |char|
        if char >= 'A' && char <= 'Z'
            has_upper = true
        elsif char >= 'a' && char <= 'z'
            has_lower = true
        elsif char >= '0' && char <= '9'
            has_digit = true
        end
    end
    has_upper && has_lower && has_digit
end
    
print"Enter the password:"
pass_word=gets.chomp
validation=validate(pass_word)
p validation
if validation==true
    puts"Valid Password"
else
    puts"Invalid Password"
end

# 22. Number Guess Analysis
secret=56
guesses=[34,60,54,56,90]
guesses.each do |i|
    if i== secret
        puts "Correct"
    elsif i< secret
        puts"To Low"
    else
        puts"To High"
    end
end

# 23. Student Marks
students = {
  "Alice" => 87,
  "Bob" => 42,
  "Charlie" => 65,
  "David" => 91,
  "Eva" => 58
}

passed = []
failed = []

highest_name=""
highest_mark = 0

students.each do |name, mark|
  if mark>=50
    passed << name
  else
    failed << name
  end

  if mark > highest_mark
    highest_mark = mark
    highest_name = name
  end
end

puts "Passed Students:"
puts passed

puts "Failed Students:"
puts failed

puts "Highest Scorer:"
puts "#{highest_name} - #{highest_mark}"

#24. Shopping Cart Total
cart={
Rice:450,
Oil:180,
Soap:45,
Sugar:60
}
total=0
cart.each do |item,price|
    total+=price
end
if total>500
    total=total-(total/10)
end
puts"Total Amount: #{total}"

# 25. Employee Attendance
attendance=["P","P","A","P","L","P","P","A"]
present=0
absent=0
leave=0
attendance.each do |i|
    if i=="P"
        present+=1
    elsif i=="A"
        absent+=1
    elsif i=="L"
        leave+=1
    else 
        puts"Invalid value:#{i}"
    end
end
puts"Present: #{present}"
puts"Absent : #{absent}"
puts"Leave  : #{leave}"