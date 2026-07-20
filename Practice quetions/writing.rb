students = {}

i = 1
while i <= 5
  puts "Enter marks for Student#{i}:"

  students["Student#{i}"] = {}

  j = 1
  total = 0

  while j <= 5
    print "Subject#{j}: "
    mark = gets.to_i

    students["Student#{i}"]["Subject#{j}"] = mark
    total += mark

    j += 1
  end

  students["Student#{i}"]["Total"] = total
  students["Student#{i}"]["Average"] = total / 5.0

  i += 1
end

highest = nil
lowest = nil
pass = 0
fail = 0

puts "\n----- Student Results -----"

students.each do |name, data|

  avg = data["Average"]

  if highest == nil || avg > highest
    highest = avg
  end

  if lowest == nil || avg < lowest
    lowest = avg
  end

  if avg >= 90
    grade = "A"
    pass += 1
  elsif avg >= 75
    grade = "B"
    pass += 1
  elsif avg >= 60
    grade = "C"
    pass += 1
  elsif avg >= 50
    grade = "D"
    pass += 1
  else
    grade = "Fail"
    fail += 1
  end

  puts "#{name}"
  puts "Total   : #{data["Total"]}"
  puts "Average : #{avg}"
  puts "Grade   : #{grade}"
  puts
end

puts "Highest Average : #{highest}"
puts "Lowest Average  : #{lowest}"
puts "Pass Count      : #{pass}"
puts "Fail Count      : #{fail}"