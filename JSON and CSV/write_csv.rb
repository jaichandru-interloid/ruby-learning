require "csv"
FILE = "example.csv"


CSV.open(FILE, "a") do |csv|
  csv << ["name", "age"]
  csv << ["John", 23]
end