def result(marks)
    count=0
    for i in 0...marks.length
        if marks[i]>=45
            count+=1
        end
    end
    if count==marks.length
        "Pass"
    else
        "Fail"
    end
end
puts"Enter the each subject marks:"
marks=[]
for i in 0...5
    marks[i]=gets.chomp.to_i
end
puts"Your result is #{result(marks)}"