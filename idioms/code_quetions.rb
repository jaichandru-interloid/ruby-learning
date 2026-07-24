#Question 1
class Sum
  def add(*array); total = array.sum; end
end

summing=Sum.new

puts summing.add(23, 14, 7, 11)
puts"-----------------------------------------------------------------"

#Question 2
def greet(name:, greeting: " Hiiii")
  puts "#{greeting}, #{name}"
end

greet(name:"John")
puts"-----------------------------------------------------------------"

#Question 3
numbers = [1, 2, 3, 4, 5]

result = numbers
  .tap { |arr| puts "Before map: #{arr.inspect}" }
  .map { |num| num * 2 }
  .tap { |arr| puts "After map: #{arr.inspect}" }

puts "Final Result: #{result.inspect}"
puts"-----------------------------------------------------------------"
p=proc{return 1};p p.call