lines = File.foreach("names.txt").count
puts lines

File.foreach("names.txt").each_with_index do |name, index|
  puts index+1
end