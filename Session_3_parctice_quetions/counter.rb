print"Enter the sentence:"
sentence=gets.chomp.downcase

words=sentence.split

frequency=Hash.new(0)

words.each do |word|
  frequency[word]+=1
end

puts "Words Frequency:"
frequency.each do |word,count|
  puts"#{word} : #{count}"
end