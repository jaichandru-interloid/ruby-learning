print"Enter the number:"
n=gets.chomp.to_i
reverce=0
n1=n
while n1>0
    remind=n1%10
    reverce*=10
    reverce+=remind
    n1/=10
end
puts"Reversed number is : #{reverce}."