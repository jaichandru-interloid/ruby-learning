class Product
  attr_reader :name, :price
  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Cart
  def initialize(customer_name)
    @customer_name = customer_name
    @cart = []
  end

  def add_product(product)
    @cart << product
    puts "Product added in the cart...!"
  end

  def remove_product(product_name)
    product = @cart.find { |p| p.name == product_name }

    if product
      @cart.delete(product)
      puts "#{product.name} removed from the cart...!"
    else
      puts "Product not found...!"
    end
  end

  def display_cart
    puts "Invoice"
    puts "Customer : #{@customer_name}"

    total = 0

    @cart.each do |product|
      puts "#{product.name} - #{product.price}"
      total += product.price
    end

    puts "Total : #{total}"
  end
end

product1 = Product.new("Laptop", 50000)
product2 = Product.new("Mouse", 1000)
product3 = Product.new("Keyboard", 2500)

cart = Cart.new("John")

cart.add_product(product1)
cart.add_product(product2)
cart.add_product(product3)

cart.display_cart

puts "Removing Mouse..."
cart.remove_product("Mouse")

cart.display_cart

#Question 8
class Movie
  attr_reader :movie_name, :ticket_price, :ticket_count
  def initialize(movie_name, ticket_price, ticket_count)
    @movie_name = movie_name
    @ticket_price = ticket_price
    @ticket_count = ticket_count
  end

  def booking
    @ticket_price * @ticket_count
  end

  def display_details
    puts "Movie Name : #{@movie_name}"
    puts "Tickets : #{@ticket_count}"
    puts "Total Amount : #{booking}"
  end
end

movie = Movie.new("Leo", 200, 4)
movie.display_details

#Question 9
class Hospital
  attr_reader :name, :age, :diesase
  def initialize(name, age, disease)
    @patient_name = name
    @patient_age = age
    @disease = disease
  end

  def display_details
    puts "Patient Details"
    puts "Name : #{@patient_name}"
    puts "Age : #{@patient_age}"
    puts "Disease : #{@disease}"
  end
end

hospital = Hospital.new("Ravi", 35, "Fever")

hospital.display_details

#Question 10
class ElectricityBill
  def initialize(usage)
    @usage = usage
  end
  def calculate
    if @usage <= 100
      @usage * 2
    elsif @usage <=200
      (100*2) + ((@usage - 100)*3)
    else
      (100*2)+(100*3)+((@usage-200)*5)
    end
  end

  def display
    puts "Electricity Bill"
    puts "Units : #{@usage}"
    puts "Amount : #{calculate}"
  end
end

electricity_bill=ElectricityBill.new(250)
electricity_bill.display