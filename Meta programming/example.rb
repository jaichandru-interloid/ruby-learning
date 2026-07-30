class Example
  def method_missing (method_name, *args, &block)
    puts "Method name : #{method_name}"
    puts "Arguement   : #{args.inspect}"
  end

  # def greet(string)
  #   puts "method passed #{string}"
  # end

end

example = Example.new
example.greet("Hii...!")
puts example.respond_to?("greet")
#------------------------------------------------------------------------------------


class Animal
  def initialize (data)
    @data = data
  end

  def method_missing(method_name, *args, &block)
    key = method_name.to_s.sub("user_", "")
    if @data.key?(key)
      @data[key]
    else
      super
    end
  end

  # def respond_to_missing?(method_name, include_private = false)
  #   key = method_name.to_s.sub("user_", "")
  #   @data.key?(key) 
  # end
end

animal = Animal.new({
        "name" => "Dog",
        "age" => 2
})

puts animal.user_name
puts animal.user_age
puts animal.respond_to?(:user_name)