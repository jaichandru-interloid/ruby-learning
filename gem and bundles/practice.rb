class person

def initialize(name,age)
@name=name
@age=age
end

def hello
puts "Hello #{@name}"
end

def can_vote
if @age >= 18
return true
else
return false
end
end

def print_numbers
for i in 1..10 do
puts i
end
end

def calculate(a,b,c,d,e,f,g,h)
x=a+b
y=c+d
z=e+f
return x+y+z+g+h
end

def check(value)
if value == nil
puts "nil"
end

if value == true
puts "true"
end

if value == false
puts "false"
end
end

def duplicate
temp = []
temp << 1
temp << 2
temp << 3
return temp
end

end

p = person.new("Alice",20)
p.hello
puts p.can_vote
p.print_numbers
puts p.calculate(1,2,3,4,5,6,7,8)
p.check(nil)