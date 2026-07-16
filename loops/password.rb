
password="Jaichandru*1422"
count=0
while count<3
    print"Enter the password:"
    pass=gets.chomp
    if pass==password
        puts"Logged in Successfully"
        break
    else
        puts"Try again"
    end
    count+=1
    if count==3
        puts" try after few minutes"
    end
end