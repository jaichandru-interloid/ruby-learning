require "csv"
count = 0
CSV.foreach("sales.csv") do |rows|
  count+=1
end

puts "Rows in the CSV file is : #{count}"

CSV.foreach("sales.csv", headers: true) do |row|
  puts row.to_h
end