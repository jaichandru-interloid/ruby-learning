LOG_FILE = "time.txt"
File.open(LOG_FILE, "a") do |file|
  file.puts("Runned at : #{Time.now}")
end

