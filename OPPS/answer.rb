class Customer
  attr_reader :customer_name
  def initialize (customer_name)
    @customer_name = customer_name
  end
end

class Product
  attr_reader :product_name, :product_price
  def initialize(product_name, product_price)
    @product_name = product_name
    @product_price = product_price
  end
end

class Cart
  attr_reader :products
  def initialize
    @products = []
  end

  def add_product(product)
    products << product
  end

  def total
    @products.sum {|products| product.price}
  end
end

class Order
  def initialize(customer, cart)
    @customer = customer
    @cart = cart
  end
  
  def invoice
    puts "Invoice"
    puts "Customer : #{@customer.name}"
    @cart.each do |product|
      puts "
end