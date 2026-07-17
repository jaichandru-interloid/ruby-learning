print"Enter the word: "
word=gets.chomp.downcase
rev=""
len=word.length-1
while len>=0
    rev+=word[len]
    len-=1  
end
if word==rev
    puts"#{word} is a palindrome"
else
    puts"#{word} is not palindrome"
end