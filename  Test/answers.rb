# Quetion 1
str="madam"
rev=""
len=str.length-1
while len>=0
    rev+=str[len]
    len-=1
end
if str==rev
    puts"The given string is a palindrom."
else
    puts"The given string is not palindrom."
end
p"****************************************************************************"

#Quetion 2
n=6
fact=1
for i in 1..n
    fact*=i
end
puts fact
p"****************************************************************************"

#Question 3
n=984531
num=n
count=0
while num>0
    count+=1
    num/=10
end
puts count
p"****************************************************************************"

#Quetion 4
arr=[45,12,78,5,99]
small=arr[0]
arr.each do |i|
    if i<small
        small=i
    end
end
puts small
p"****************************************************************************"

#Quetion 5
str="RubyLANG"
upper=0
lower=0
str.each_char do |i|
    if i>="a" && i<="z"
        lower+=1
    elsif i>="A" && i<="Z"
        upper+=1
    end
end
puts"Uppercase: #{upper}"
puts"Lowercase: #{lower}"
p"****************************************************************************"

#Quetion 6
arr=[1,2,3,4,5]
rev=[]
l=arr.length-1
while l>=0
    rev<< arr[l]
    l-=1
end
p rev
p"****************************************************************************"

#Quetion 7
a=[1,2,3,4,5]
b=[3,4,5,6,7]
com=[]
l=a.length
a.each do |i|
    b.each do |j|
        if i==j
            com<< i
        end
    end
end
p com
p"****************************************************************************"

# Quetion 8
n=10
a=0
b=1 
for i in 1..n
    print"#{a}, "
    temp=a
    a+=b
    b=temp
end
puts
p"****************************************************************************"

#Quetion 9
str="Ruby is easy to learn"
count=1
str.each_char do |i|
    if i==" "
        count+=1
    end
end 
puts count
p"****************************************************************************"

#Quetion 10
a=20
b=10
a,b=b,a
puts a
puts b
p"****************************************************************************"

#Quetion 11
arr=['Task1','Task2','Task3']
hash={}
arr.each do |i|
    hash[i]="Pending"
end
puts hash
p"****************************************************************************"

#Quetion 12
arr=[1,2,3,2,4,5,1,6]
for i in 0...arr.length
    count=0
    for j in  i+1...arr.length
        if arr[i]==arr[j]
            count+=1
        end
    end
    if count>0
        puts arr[i]
    end
end
p"****************************************************************************"

#Quetion 13
arr=[5,8,11,20,13]
odd_sum=0
arr.each do |i|
    if i%2==1
        odd_sum+=i
    end
end
puts odd_sum
p"****************************************************************************"

#Quetion 14
str="ruby ruby rails ruby rails"
l=str.length
words=[]
hash={}
word=""
for i in 0...l
    if str[i]==" "
        words<< word
        word=""
        next
    elsif i==l-1
        word+=str[i]
        words<< word
        next
    else
        word+=str[i]
    end
end
for i in 0...words.length
    count=0
    for j in i...words.length
        if words[i]==words[j]
            count+=1
        end
    end
    check=0
    hash.each do |key,value|
        if key==words[i]
            check+=1
        end
    end
    if check==0
        hash[words[i]]=count
    end
end
puts hash

p"****************************************************************************"

#Quetion 15
n=5
k=1
for i in 1..n
    j=1
    while j<=i
        print "#{k} "
        k+=1
        j+=1
    end
    puts
end
p"****************************************************************************"

#Question 16
a=[1,2,3,4]
b=[4,3,2,1]
c=[]
a.each do |i|
    count=0
    b.each do |j|
        if i==j
            count+=1
        end
    end
    if count==1
        c<< i
    end
end
if c.length==a.length
    puts"Both arrays contain the same elements."
else 
    puts"Both arrays not contain the same elements."
end
p"****************************************************************************"

#Quetion 17
arr=[10,20,30,40,50]
n=2
for i in 0...n
    l=arr.length-2
    while l>=0
        temp=arr[l]
        arr[l]=arr[l-1]
        arr[l-1]=temp
        l-=1
    end
end
p arr
p"****************************************************************************"
#Quetion 18
n=100
for i in 1..100
    count=0
    for j in 1..i
        if i%j==0
            count+=1
        end
    end
    if count==2
        print "#{i} "
    end
end
puts
p"****************************************************************************"

#Quetion 19
str="aaabbbbccdd"
words=[]
word=""
len=0
for i in 0...str.length
    if str[i]!=str[i+1]
        word+=str[i]
        words<< word
        if len<word.length
            len=word.length
        end
        word=""
    elsif i==str.length-1
        word+=str[i]
        words<< word
        if len<word.length
            len=word.length
        end
        word=""
    else
        word+=str[i]
    end
end
words.each do|i|
    if i.length==len
        puts i
    end
end
p"****************************************************************************"

#Quetion 20
arr=[5,-2,8,-9,10,-1]
positive=[]
negative=[]
arr.each do |i|
    if i>0
        positive<< i
    elsif i<0
        negative<< i
    end
end
puts "Positive: #{positive}"
puts "Negative: #{negative}"
p"****************************************************************************"

#Quetion 21
arr=[8,2,6,2,9,1]
first=arr[0]
second=arr[1]
for i in 0...arr.length
    if first>arr[i]
        second=first
        first=arr[i]
    end
end
puts second
p"****************************************************************************"

#Question 22
n=[3,5,2]
n.each do |i|
    for j in 0...i
        print"#"
    end
    puts
end
p"****************************************************************************"

#Quetion 23
arr=[7,4,2,5,4,8,2]
for i in 0...arr.length
    count=0
    for j in i+1...arr.length
        if arr[i]==arr[j]
            count+=1
        end
    end
    if count>0
        puts arr[i]
        break
    end
end
p"****************************************************************************"

#Question 24
input="Arun=45000,Kumar=62000,John=38000"
names=[]
salaries=[]
temp=""
index=0
i=0
while i<=input.length
    if i==input.length || input[i]==","
        j=0
        name=""
        salary=""
        while j<temp.length
            if temp[j]=="="
                j=j+1
                break
            end
            name=name+temp[j]
            j=j+1
        end

        while j<temp.length
            salary=salary+temp[j]
            j=j+1
        end

        names[index]=name
        salaries[index]=salary.to_i
        index=index+1
        temp=""
    else
        temp=temp+input[i]
    end
    i=i+1
end

highest=salaries[0]
lowest=salaries[0]
high_name=names[0]
low_name=names[0]
total=0

i=0
while i<index
    total=total+salaries[i]

    if salaries[i] > highest
        highest=salaries[i]
        high_name=names[i]
    end

    if salaries[i]<lowest
        lowest=salaries[i]
        low_name=names[i]
    end

    i=i+1
end

average=total.to_f/index
puts "Highest: #{high_name} (#{highest})"
puts "Lowest: #{low_name} (#{lowest})"
puts "Average: #{'%.2f' % average}"

print "Above Average: "
first=true
i=0
while i<index
    if salaries[i]>average
        if !first
        print ", "
        end
        print names[i]
        first=false
    end
    i=i+1
end
puts
p"****************************************************************************"

