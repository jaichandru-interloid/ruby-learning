print "Enter the file name : "
name = gets.chomp

begin
  file = File.open(name, "r")
  puts file.read
  file.close
rescue Errno::ENOENT
  puts "Sorry, the file #{name} may not be found. Please check the file and retry after...!"
end