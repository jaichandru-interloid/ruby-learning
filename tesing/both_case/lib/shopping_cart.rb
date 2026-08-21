class ShoppingCart
  def initialize 
    @cart={}
  end

  def add_item(name, price, quantity)
    @cart[name]||={price:price,quantity:0}
    @cart[name][:quantity]+=quantity
  end

  def total
    @cart.sum do |_,item|
      item[:price]*item[:quantity]
    end
  end

  def edit_data(name, quantity)
    raise KeyError,'Item:Not found' unless @cart.key?(name)
    @cart[name][:quantity]=quantity
  end

  def remove_item(name)
    @cart.delete(name)
  end

  def item_count
    @cart.values.sum{|item| item[:quantity]}
  end

  def empty?
    @cart.empty?
  end
end

# shopping=ShoppingCart.new('Apple', 25, 20)

# shopping.edit_data('Orange', 23)