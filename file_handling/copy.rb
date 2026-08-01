COPY_FILE = "copy.txt"


File.foreach("users.txt") do |data|
  File.open(COPY_FILE, "a") do |source|
    source.puts(data)
  end
end

File.foreach(COPY_FILE) do |data|
  puts data
end