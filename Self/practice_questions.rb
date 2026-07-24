puts "self= #{self}"
puts "Class of self= #{self.class}"
p"________________________________________________"

#Quetion2
class Application
	def self.build
		puts self
	end
end
Application.build
p"_________________________________________________"

#quetion 3

class Double
	attr_accessor :value
	def initialize(value)
		self.value=value
	end

	def double
		self.value=value*2
	end
end

doub=Double.new(20)
puts "Initial value is : #{doub.value}"
doub.double
puts "Value after doubling : #{doub.value}"
p"_________________________________________________"

#Quetion 4

class Calculate
	attr_accessor :total
	def initialize(total)
		@total=total
	end

	def add(number)
		@total+=number
		self
	end

	def display
		puts"Total : #{@total}"
	end
end

calc=Calculate.new(3)
calc.add(14).add(22).add(3).display