students = [
  { name: "John", score: 85 },
  { name: "Alice", score: 92 },
  { name: "Bob", score: 78 },
  { name: "David", score: 95 },
  { name: "Eva", score: 88 }
]

students = students.sort do |stud1, stud2|
  stud2[:score] <=> stud1[:score]
end
puts"Top three scorers:"

3.times do |i|
  puts "#{students[i][:name]} : #{students[i][:score]}"
end