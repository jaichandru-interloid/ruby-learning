class ShoppingCart
  def initialize
    @items = []
  end

  def add(item)
    @items << item
  end

  def remove(item)
    @items.delete(item)
  end

  def total_items
    @items.length
  end

  def empty?
    @items.empty?
  end
end