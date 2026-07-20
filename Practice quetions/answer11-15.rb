#11. Group Words by Length
arr=["cat","dog","elephant","rat","lion"]
len=[]
for i in 0...arr.length
    if !len.include?(arr[i].length)
        len<< arr[i].length
    end
end
hash={}
len.each do |l|
    collect=[]
    for i in 0...arr.length
        if l==arr[i].length
            collect<< arr[i]
        end
    end
    hash[l]=collect
end
puts hash

#12. Find Missing Number
arr=[1,2,3,5,6,7]
len=arr.length
for i in 0..len
    if arr[i]+1!=arr[i+1]
        puts"The miising number is #{arr[i]+1}."
        break
    end
end

#13. Merge Two Arrays Without Duplicates
a=[1,2,3,4]
b=[3,4,5,6]
b.each do |i|
    if !a.include?(i)
        a<< i
    end
end
p a

#14. Most Frequent Element
arr=[4,5,1,5,2,4,5,3]

max_count = 0
most_frequent = nil

i = 0
while i < arr.length
  count = 0

  j = 0
  while j < arr.length
    if arr[i] == arr[j]
      count += 1
    end
    j += 1
  end

  if count > max_count
    max_count = count
    most_frequent = arr[i]
  end

  i += 1
end

puts "Most frequent number: #{most_frequent}"
puts "Count: #{max_count}"

#15. Count Word Frequency
str="ruby ruby rails ruby rails html css html"
arr=str.split
words=[]
hash={}
arr.each do |i|
    if !words.include?(i)
        words<< i
    end
end
words.each do |i|
    count=0
    for j in arr
        if i==j
            count+=1
        end
    end
    hash[i]=count
end
p hash