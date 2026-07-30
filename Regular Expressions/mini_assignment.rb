class Validate
  def email_validate (email)
    pattern = /\A[A-Za-z0-9._+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}\z/
    if email.match?(pattern)
      puts "Valid mail move to next step"
      phone_validate
    else
      puts "Invalid mail unable to proceed"
    end
  end

  def phone_validate
  print "Enter your phone number without country code and no extra space or special character: "
  phone = gets.chomp

  pattern = /\A\d{10}\z/

  if phone.match?(pattern)
    puts "Valid phone number. Move to next step."
    pin_validate
  else
    puts "Invalid phone number. Unable to proceed."
  end
end

  def pin_validate
    print "Enter your 6 digit pin"
    pin = gets.chomp
    pattern =  /\A\d{6}\z/

    if pin.match?(pattern)
      puts "Valid pin move to next step"
      password_validate
    else
      puts "Invalid PIN unable to proceed"
    end
  end

  def password_validate
    print "Enter the password : "
    pass_word = gets.chomp.to_s
    pattern = /^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*()_+\-=\[\]{};':"\\|,.<>\/?]).{8,}$/

    if pass_word.match? (pattern)
      puts "Valid Password user Created successfull"
    else
      puts "Invalid password unbale to proceed"
    end
  end
end

puts "---------Create a user---------"
print "Enter the email : "
email = gets.chomp.to_s

validate = Validate.new
validate.email_validate(email)