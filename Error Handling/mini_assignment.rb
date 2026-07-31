def get_number(message)
  print message
  input = gets.chomp

  raise ArgumentError, "Input cannot be empty." if input.empty?

  Float(input)
end

def get_operator
  print "Enter operator (+, -, *, /): "
  op = gets.chomp

  unless ["+", "-", "*", "/"].include?(op)
    raise ArgumentError, "Invalid operator."
  end

  op
end

def calculate(a, b, op)
  case op
  when "+"
    a + b
  when "-"
    a - b
  when "*"
    a * b
  when "/"
    raise ZeroDivisionError, "Cannot divide by zero." if b == 0
    a / b
  end
end

loop do
  begin
    num1 = get_number("Enter first number: ")
    num2 = get_number("Enter second number: ")
    operator = get_operator

    result = calculate(num1, num2, operator)

    puts "Result = #{result}"

  rescue ArgumentError => e
    puts "Error: #{e.message}"

  rescue ZeroDivisionError => e
    puts "Error: #{e.message}"

  ensure
    puts "Calculation attempt finished."
  end

  print "\nDo you want to calculate again? (y/n): "
  answer = gets.chomp.downcase
  break unless answer == "y"
end

puts "Goodbye!"