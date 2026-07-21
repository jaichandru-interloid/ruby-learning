# 1. Count Character Frequency
str="programming"
i=0
count={}
while i<str.length
    ch=str[i]
    if count[ch]==nil
        count[ch]=1
    else
        count[ch]+=1
    end
    i+=1
end
puts count

#2. Find the Second Largest Number
arr = [12, 45, 67, 89, 45, 23, 89, 78]
largest = arr[0]
second = nil
i = 1
while i < arr.length
    if arr[i] > largest
        second = largest
        largest = arr[i]
    elsif arr[i] != largest && (second == nil || arr[i] > second)
        second = arr[i]
    end
    i += 1
end
puts "Second largest: #{second}"

#3. Reverse Every Word
str="Ruby is awesome"
arr=str.split
rev=[]
arr.each do|i|
    j=i.length-1
    ch=""
    while j>=0
        ch+=i[j]
        j-=1
    end
    rev<< ch
end
sentance=rev.join(" ")
puts sentance

#4. Find Duplicate Elements
arr=[2,5,3,2,7,8,5,9,7]
n=arr.length
duplicate=[]
for i in 0...n-1
    count=0
    j=i+1
    while j<n
        if arr[i]==arr[j]
            count+=1
        end
        j+=1
    end
    if count>0
        duplicate<< arr[i]
    end
end
print duplicate

#5. Count Vowels and Consonants
str="Programming"
vowel=0
consonants=0
str.each_char do|i|
    if i=="a"||i=="e"||i=="i"||i=="o"||i=="u"
        vowel+=1
    else 
        consonants+=1
    end
end
puts "Vowel=#{vowel}"
puts "Consonant=#{consonants}"