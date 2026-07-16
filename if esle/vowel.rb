print"Enter the character:"
ch==gets.chomp.downcase
if ch.length!=1
    puts"Enter a single alphabet."
elsif ch>='a'|| ch<='z'
    puts"Enter an Valid alphabet."
elsif ch=='a' || ch=='e' || ch=='i' || ch=='o' || ch=='u'
    puts"It's a vowel"
else
    puts"It's a consonant"
end