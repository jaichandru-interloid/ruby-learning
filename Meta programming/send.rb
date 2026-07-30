class Student
  def initialize (name, id)
    @name = name
    @id = id
  end

  def method_missing(method_name, *args, &block)
    puts "Method Name : #{method_name}"
    if method_name == :display_details
      puts "Name : #{@name}"
      puts "ID   : #{@id}"
    end
  end


  # private
  # def display
  #   puts @name
  #   puts @id
  # end
end

student = Student.new("John", 10)
puts student.display_details

puts student.respond_to?("display")