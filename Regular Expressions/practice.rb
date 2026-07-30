print "Enter the email :"
email = gets.chomp.to_s

pattern = /\A[a-zA-Z0-9._]+@[a-zA-Z0-9.]+\.com\z/

if email.match?(pattern)
  puts "Valid mail"
else
  puts "Invalid mail"
end

#------------------------------------------------------------------------------------

text = "John's number is 9876543210. Call Alice at 9123456789 tomorrow. Office: 8765432109. Invalid numbers: 12345, 98765432101. Email: john@example.com"
pattern = /\b\d{10}\b/

numbers = text.scan(pattern)
puts numbers

#------------------------------------------------------------------------------------

string = "Ruby     is        a      powerful        programming      language."

string = string.gsub(/\s+/, " ")

puts string

#------------------------------------------------------------------------------------

date = "2026-07-14"
pattern = /(?<year>\d{4})-(?<month>\d{2})-(?<day>\d{2})/

matches = date.match(pattern)

puts matches[:year]
puts matches[:month]
puts matches[:day]
#------------------------------------------------------------------------------------
