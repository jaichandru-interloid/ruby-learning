File.foreach("names.txt").each_with_index do |name, index|
  puts name if name.start_with?("A")
end