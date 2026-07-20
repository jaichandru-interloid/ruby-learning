#16. Separate Even and Odd Numbers
arr=[1,4,8,7,5,10]
odd=[]
even=[]
hash={}
arr.each do |i|
    if i%2==0
        even<< i
    else
        odd<< i
    end
end
hash[:even]=even
hash[:odd]=odd
p hash

#17. Intersection of Two Arrays
a=[1,2,3,4]
b=[3,4,5,6]
common=[]
b.each do |i|
    if a.include?(i)
        common<< i
    end
end
p common

#18. Count Occurrence of Each String Length
arr=["ruby","java","c","go","python"]
len=[]
for i in 0...arr.length
    if !len.include?(arr[i].length)
        len<< arr[i].length
    end
end
hash={}
len.each do |l|
    count=0
    for i in 0...arr.length
        if l==arr[i].length
            count+=1
        end
    end
    hash[l]=count
end
puts hash

#19. Find Unique Characters
str="success"
l=str.length
unique=[]
for i in 0...l
    count=1
    for j in 0...l
        if i!=j
            if str[i]==str[j]
                count+=1
            end
        end
    end
    if count==1
        unique<< str[i]
    end
end
p unique

#20. Sort Hash by Value
hash = {
  ruby: 4,
  java: 2,
  python: 5,
  php: 1
}

pairs = hash.to_a
n = pairs.length

for i in 0...n-1
  for j in 0...n-i-1
    if pairs[j][1] > pairs[j+1][1]
      temp = pairs[j]
      pairs[j] = pairs[j+1]
      pairs[j+1] = temp
    end
  end
end

sorted_hash = {}

for pair in pairs
  sorted_hash[pair[0]] = pair[1]
end

puts sorted_hash