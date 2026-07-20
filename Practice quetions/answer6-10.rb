# 6. Rotate an Array
arr=[1, 2, 3, 4, 5]
n=arr.length
k=1
k=k%n
rotated_arr=[]
for i in 0...n
    rotated_arr<< arr[(i+k)%n]
end
puts "Rotated Array: #{rotated_arr}"

#7. Longest Word
str="The quick brown fox jumps over the lazy dog"
words=str.split
longest_word=""
words.each do |word|
    if word.length > longest_word.length
        longest_word = word
    end
end
puts "Longest Word: #{longest_word}"

#8. Remove Duplicate Characters
str="banana"
unique_chars=""
str.each_char do |char|
    if !unique_chars.include?(char)
        unique_chars += char
    end
end
puts "String after removing duplicates: #{unique_chars}"

#9. Check Palindrome
str="Never Odd Or Even"
stripped_str=str.downcase.gsub(/[^a-z]/, '')
reverced=""
len=stripped_str.length-1
while len>=0
    reverced+=stripped_str[len]
    len-=1
end
if stripped_str==reverced
    puts "#{str} is a palindrome"
else
    puts "#{str} is not a palindrome"
end

#10. Sum of Digits
num=48391
n=num
sum=0
while n>0
    sum+=n%10
    n/=10
end
puts"Sum the digits of the number #{num} is : #{sum}"