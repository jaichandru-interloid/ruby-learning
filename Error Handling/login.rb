class InvalidLoginError < StandardError
end

class NameExistError < StandardError
end

class Login
  def initialize
    @users = eval(File.read("users.txt"))
  end

  def validate
    print "Enter the username : "
    uname= gets.chomp

    print "Enter the password : "
    pword = gets.chomp

    user_record = {username: uname, password: pword}
    if @users.include? (user_record)
      puts "Logged in Successfully"
    else
      raise InvalidLoginError, "Invalid user name or password!"
    end
  end
end

class CreateUser < Login
  def create_user
    print "Enter the username : "
    uname = gets.chomp

    if @users.any? {|user| user[:username] == uname}
      raise NameExistError, "User name is already existed "
    end
    print "Enter the password : "
    pword = gets.chomp
    user_record = {username: uname, password: pword}
    @users << user_record
    File.write("users.txt", @users.inspect)

    puts "User created successfully...!"
  end
end

retry_count = 0
create = CreateUser.new
begin
  puts "---------Menu---------"
  puts "1. Sign Up"
  puts "2. Sign In"
  print "Enter the choice : "
  choice = gets.chomp.to_i

  case choice
  when 1
    create.create_user
  when 2
    retry_count += 1
    create.validate
  else
    puts "Invalid choice"
  end

rescue InvalidLoginError => e
  puts e.message
  retry if retry_count < 3
    
rescue NameExistError => e
  puts e.message
  retry
end
