require "csv"
class Sales
  FILE = "sales.csv"
  OP_FILE = "summary.csv"
  def initialize
    unless File.exist?(FILE)
      CSV.open(FILE, "w") do |csv|
        csv << ["SaleID", "Date", "Salesperson", "Product", "Category", "Quantity", "UnitPrice", "Region"]
      end
    end
    @grand_total = 0
  end

  def add_data
    print "Enter rthe sales ID :"
    salesid = gets.chomp
    print "Date : "
    date = gets.chomp
    print "Enter the sales person name : "
    sales_man = gets.chomp
    print "Enter the product : "
    product = gets.chomp
    print "Enter the category of the product : "
    category = gets.chomp
    print "Enter the Quantity : "
    quantity = gets.chomp.to_i
    print "Enter the price of a unit : "
    unit_price = gets.chomp.to_f.round(2)
    print "Enter the region : "
    region = gets.chomp

    CSV.open(FILE, "a") do |csv|
      csv << [salesid, date, sales_man, product, category, quantity, unit_price, region]
    end
    puts "Record added successfully...!"
  end

  def summary
    CSV.open(OP_FILE, "w") do |csv|
      csv << ["SaleID", "Date", "Salesperson", "Product", "Quantity", "UnitPrice", "Amount"]

      CSV.foreach(FILE, headers: true) do |row|
        quantity = row["Quantity"].to_i
        unit = row["UnitPrice"].to_f
        amount = quantity * unit

        @grand_total += amount

        csv << [
          row["SaleID"],
          row["Date"],
          row["Salesperson"],
          row["Product"],
          quantity,
          unit,
          amount
        ]
      end

      csv << []
      csv << ["Grand Total", @grand_total]
    end

    puts "Summary written to #{OP_FILE}"
  end
end
sales = Sales.new
loop do
  puts "================MENU================"
  puts "1. Add new data"
  puts "2. Sales Summary"
  puts "3. Exit"
  puts "===================================="
  print "Enter your choice :"
  choice = gets.chomp.to_i
  case choice
  when 1
    sales.add_data
  when 2
    sales.summary
  when 3
    puts "Exiting....!"
    break
  else
    puts "Invalid choice"
  end
end