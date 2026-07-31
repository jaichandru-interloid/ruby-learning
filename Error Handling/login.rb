class InvalidUserError < StandardError
end

class Login
  def initialize
    # Create file if it does not exist
    File.write("users.txt", "") unless File.exist?("users.txt")
    @users = File.readlines("users.txt", chomp: true)
  end

  def validate
    print "Enter the user name: "
    uname = gets.chomp

    print "Enter the password: "
    pword = gets.chomp

    user_record = "#{uname},#{pword}"

    if @users.include?(user_record)
      puts "Logged in successfully!"
    else
      raise InvalidUserError, "Invalid user name or password!"
    end
  end
end

class CreateUser < Login
  def initialize
    super()
  end

  def create_user
    print "Enter user name: "
    uname = gets.chomp

    print "Enter password: "
    pword = gets.chomp

    user_record = "#{uname},#{pword}"

    if @users.include?(user_record)
      puts "User already exists!"
    else
      File.open("users.txt", "a") do |file|
        file.puts(user_record)
      end
      puts "User created successfully!"
    end
  end
end

# Menu
begin
  puts "\n1. Create User"
  puts "2. Login"
  print "Choose option: "

  choice = gets.chomp.to_i

  case choice
  when 1
    CreateUser.new.create_user
  when 2
    Login.new.validate
  else
    puts "Invalid choice"
  end

rescue InvalidUserError => e
  puts e.message
end