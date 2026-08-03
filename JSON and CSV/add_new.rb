require "json"

FILE = "example.json"

new_data = {
  name: "Jai",
  age: 24,
  city: "London"
}

# Read existing data or create an empty array
data = if File.exist?(FILE) && !File.empty?(FILE)
        JSON.parse(File.read(FILE))
      else
        []
      end

# Add the new record
data << new_data

# Write the updated array back to the file
File.open(FILE, "w") do |file|
  file.write(JSON.pretty_generate(data))
end

puts File.read(FILE)

new_data = {
  name: "Jai",
  age: 25,
  city: "London"
}

data << new_data
File.open(FILE, "w") do |file|
  file.write(JSON.pretty_generate(data))
end

puts File.read(FILE)