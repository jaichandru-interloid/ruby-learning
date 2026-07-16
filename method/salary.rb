def salary(basic,bonus)
    tot_salary=basic+bonus
    return tot_salary
end
print"Enter the basic salary:"
basic=gets.chomp.to_i
print"Enter the bonus:"
bonus=gets.chomp.to_i
print"Your total salary is #{salary(basic,bonus)}"