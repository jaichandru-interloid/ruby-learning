class Stack
  def initialize
    @items=[]
  end
  
  def push(item)
    @items<< item
  end

  def pop
    @items.pop
  end

  def peek
    @items.last
  end

  def display
    @items
  end
end

stack=Stack.new

print"Enter the number of values to input:"
n=gets.chomp.to_i

n.times do 
  print"Enter the value:"
  value=gets.chomp.to_i
  stack.push(value)
end

puts stack.pop

puts stack.peek

puts stack.display