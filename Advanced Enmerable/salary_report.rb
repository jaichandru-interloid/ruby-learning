emp=[
    {n:"Ravi",pay:50000},
    {n:"Sara",pay:72000}]

total=emp.sum{|x| x[:pay]}
highest=emp.max_by{|x| x[:pay]}
puts"Total: #{total}"
puts"Highest: #{highest}"