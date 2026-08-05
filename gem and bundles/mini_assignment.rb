# frozen_string_literal: true

require 'csv'
require 'json'
require 'httparty'

# Read data from CSV
students = []

CSV.foreach('students.csv', headers: true) do |row|
  students << {
    id: row['id'],
    name: row['name'],
    age: row['age']
  }
end

# Save data to JSON
File.write('students.json', JSON.pretty_generate(students))
puts 'Data saved to students.json'

# Load data from JSON
loaded_students = JSON.parse(File.read('students.json'))

puts "\nStudents:"
loaded_students.each do |student|
  puts "#{student['id']} - #{student['name']} (Age: #{student['age']})"
end

# Fetch data using HTTParty
response = HTTParty.get('https://api.quotable.io/random')

if response.code == 200
  quote = JSON.parse(response.body)
  puts "\nRandom Quote:"
  puts "\"#{quote['content']}\""
  puts "- #{quote['author']}"
else
  puts 'Failed to fetch quote.'
end
