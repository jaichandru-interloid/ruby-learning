class InvalidLoginError<StandardError
end

def login(password)
  pass_word = "Password*10"
  if pass_word != password
    raise InvalidLoginError, "Incorrect Pasword or User name...!"
  end
  puts "Logged in successfully...!"
end

print "Enter the password : "
password = gets.chomp
begin
  login(password)
rescue InvalidLoginError => e
  puts e.message
end