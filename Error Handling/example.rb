class InvalidLoginError < StandardError
end
class User
  attr_reader :user_name, :password
  def initialize (user_name, password)
    @user_name = user_name
    @password = password
  end

  def validate(u_name, p_word)
    if @user_name != u_name || @password != p_word
      raise InvalidLoginError, "Invalid user name or password..!"
    end
    puts "Logged in successfully"
  end
end

user = User.new("John_developer", "John@2026")


retry_count = 0

begin
  print "Enter the username : "
  u_name = gets.chomp.to_s
  print "Enter your password : "
  p_word = gets.chomp.to_s
  retry_count += 1
  user.validate(u_name, p_word)
rescue InvalidLoginError => e
  puts e.message
  retry if retry_count < 3
end