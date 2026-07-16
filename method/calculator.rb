def calculator(a,b,act)
    case act
    when "+"
        "Addtion of #{a} and #{b} is #{a+b}."
    when "-"
        "Subraction of #{a} and #{b} is #{a-b}." 
    when "*"
        "Multiplication of #{a} and #{b} is #{a*b}."
    when "/"
        "Divition of #{a} and #{b} is #{a/b}."
    end
end
print"Enter first number:"
num1=gets.chomp.to_i
print"Enter the Second number:"
num2=gets.chomp.to_i
print"Enter the operation:"
ope=gets.chomp
puts calculator(num1,num2,ope)