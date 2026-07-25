module Display
  def display
    puts to_s
  end
end

class Product
  include Display
  attr_reader :product_name, :product_price
  attr_accessor :stock

  def initialize(product_name, product_price, stock)
    @product_name, @product_price, @stock = product_name, product_price, stock
  end

  def to_s
    "#{@product_name} - $#{@product_price} (Stock: #{@stock})"
  end
end

class Customer
  include Display
  attr_reader :customer_name, :customer_email, :order_history

  def initialize(customer_name, customer_email, order_history = [])
    @customer_name, @customer_email, @order_history = customer_name, customer_email, order_history
  end

  def add_order(order)
    @order_history << order
  end

  def to_s
    "#{@customer_name} (#{@customer_email})"
  end
end

class Cart
  attr_reader :line_items

  def initialize
    @line_items = []
  end

  def add_product(product, quantity)
    @line_items << { product: product, quantity: quantity } if quantity <= product.stock
  end

  def total
    @line_items.sum { |i| i[:product].product_price * i[:quantity] }
  end

  def names
    @line_items.map { |i| i[:product].product_name }
  end

  def expensive(price)
    @line_items.select { |i| i[:product].product_price > price }
  end

  def quantity
    @line_items.reduce(0) { |s, i| s + i[:quantity] }
  end
end

class Order
  include Display
  attr_reader :line_items, :status, :total

  def initialize(line_items, status = "Pending", total = 0)
    @line_items, @status, @total = line_items, status, total
  end

  def place_order
    @total = calculate_total
    update_stock
    @status = "Completed"
  end

  def to_s
    "Status: #{@status}, Total: $#{@total}"
  end

  private

  def calculate_total
    @line_items.sum { |i| i[:product].product_price * i[:quantity] }
  end

  def update_stock
    @line_items.each { |i| i[:product].stock -= i[:quantity] }
  end
end


product1 = Product.new("Laptop", 1000, 5)
product2 = Product.new("Mouse", 50, 10)

customer = Customer.new("John", "john@gmail.com")
cart = Cart.new

cart.add_product(product1, 1)
cart.add_product(product2, 2)

puts "Names: #{cart.names}"
puts "Quantity: #{cart.quantity}"
puts "Total: $#{cart.total}"

puts "Expensive Products:"
cart.expensive(100).each { |i| puts i[:product].product_name }

order = Order.new(cart.line_items)
order.place_order
customer.add_order(order)

customer.display
order.display
product1.display
product2.display