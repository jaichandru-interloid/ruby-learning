print "Enter the word: "
word = gets.chomp.downcase

count = 0

word.each_char do |char|
  if "aeiou".include?(char)
    count += 1
  end
end

puts "Vowels count is: #{count}"