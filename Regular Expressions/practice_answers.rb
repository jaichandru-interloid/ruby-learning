print = "Enter your 6 digit pin : "
# pin = gets.chomp.to_s
pin = "852741"

pattern = /^\d{6}$/

if pin.match?(pattern)
  puts "Valid pin"
else
  puts "Invalid pin"
end

#------------------------------------------------------------------------------------

tweet = "Learning #Ruby is fun! #Programming #Regex #100DaysOfCode"

pattern = /#\w+/

hashtags = tweet.scan(pattern)

puts hashtags

#------------------------------------------------------------------------------------

string = "Ruby On Rails"

swapped = string.gsub(/[aeiouAEIOU]/, "*")

puts swapped
#------------------------------------------------------------------------------------

print "Enter the password : "
password = gets.chomp.to_s

pattern = /^(?=.*[A-Z])(?=.*\d).{8,}$/

if password.match?(pattern)
  puts "Valid password"
else
  puts "Invalid pasword"
end
#------------------------------------------------------------------------------------
receipt ="
  SuperMart Receipt
  --------------------------
  Milk             $3.99
  Bread            $2.49
  Eggs             $5.25
  Apples           $4.75
  Coffee           $8.50
  --------------------------
  Total           $24.98"

  pattern = /\$\d+\.\d{2}/

  prices = receipt.scan(pattern)

  puts prices