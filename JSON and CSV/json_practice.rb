require 'json'
files = File.open("example.json", "w")
data = {name: "John",
        age: 23,
        city: "Newyork"}
File.open("example.json", "w") do |file|
  file.write(JSON.pretty_generate(data))
end

puts File.read("example.json")