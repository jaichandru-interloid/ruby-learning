def grade(marks)
    total=marks.sum
    average=total/marks.length
    return average
end
def result(average)
    case average
    when average>=90
        "A"
    when average>=75
        "B"
    when average>=60
        "C"
    else
        "Fail"
    end
end
print"Enter the total number of subjects:"
n=gets.chomp.to_i
marks=[]
print"Enter the marks of the each subject:"
for i in 0...n
    marks[i]=gets.chomp.to_i
end
avg=grade(marks)
print"Your grade is #{result(avg)}"