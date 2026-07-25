print "Enter the String : "
string=gets.chomp.downcase
words=string.split

hash=words.group_by{ |n| n[0]}

hash.each do|word|
  p word
end