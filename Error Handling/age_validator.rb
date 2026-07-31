class InvalidAgeError < StandardError
end

def validate
  print "Enter the age : "
  age = Integer(gets.chomp)
  raise InvalidAgeError, "Invalid age" if age<0
  puts "valid age..!"
end

begin
  validate
rescue ArgumentError
  puts "Please enter the valid number of your age "
  retry
rescue InvalidAgeError=> e
  puts e.message
end