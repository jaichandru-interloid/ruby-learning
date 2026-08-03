require "csv"
FILE = "example.csv"

file = CSV.open(FILE, "w")

CSV.open(FILE) do |csv|
  csv << ["name", "age"]
  csv << ["John", 23]
end